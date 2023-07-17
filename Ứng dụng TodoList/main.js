let todoList = [{
        id: 1,
        title: "Làm việc nhà",
        status: true
    },
    {
        id: 2,
        title: "Chơi game",
        status: false
    },
    {
        id: 3,
        title: "Đi nhậu với bạn",
        status: true
    }
]

//Khi nào lưu trữ localStorage? Khi thêm,sửa,xóa(dữ liệu bị thay đổi)
// Khi nào lấy dữ liệu từ localStorage? Hiển thị dữ liệu khi load trang 1 lần duy nhất

const saveData = () => {
    localStorage.setItem("todoList", JSON.stringify(todoList));
}

const getData = () => {
    const value = localStorage.getItem("todoList");
    if (value) {
        return JSON.parse(value);
    }
    return [];
}

const btnAdd = document.getElementById("btn-add");
const inputEl = document.getElementById("input-todo");

//Công việc 1:Render mảng todo ra ngoài giao diện
const todoListEl = document.querySelector("#todolist");
const renderTodoList = () => {
    todoListEl.innerHTML = "";
    //TH1:Không có công việc
    if (todoList.length === 0) {
        todoListEl.insertAdjacentHTML("afterbegin", "<li>Danh sách công việc trống</li>");
        return;
    }

    //TH2:Có công việc trong danh sách
    let html = "";
    todoList.forEach(t => {
        if (t.status == true) {
            html += `<li>
        <input type="checkbox" checked>
        <span class="active">${t.title}</span>
        <button onclick="editTodo(${t.id})">Edit</button>
        <button onclick="deleteTodo(${t.id})">Delete</button>
    </li>`
        } else {
            html += `<li>
            <input type="checkbox">
            <span>${t.title}</span>
            <button>Edit</button>
            <button onclick="deleteTodo(${t.id})">Delete</button>
        </li>`
        }
    });
    todoListEl.innerHTML = html;
}

const getId = () => {
    // return Math.floor(Math.random() * (max - min) + 1) + min;
    //return todoList.sort((t1, t2) => t2.id - t1.id)[0].id + 1;
    if (todoList.length === 0) {
        return 1;
    }
    return Math.max(...todoList.map(t => t.id)) + 1;
}

//Công việc 2:Tạo Todo
const addTodo = () => {
    //B1:Lấy nội dung trong input
    let inputValue = inputEl.value;

    //B2:Kiểm tra nội dung có trống hay không? Nếu trống -> alert cảnh báo
    if (inputValue.trim().length === 0) {
        alert("Tên công việc không được để trống");
        return;
    }

    //B3:Tạo objject tương ứng {id:, title:, status: false}
    const newTodo = {
        id: getId(),
        title: inputValue,
        status: false
    }

    //B4:Thêm object vào mảng todoList ban đầu và clear dữ liệu trong ô input
    todoList.push(newTodo);
    inputEl.value = "";

    //B5:Render lại giao diện sau khi thêm
    saveData();
    renderTodoList();
}
btnAdd.addEventListener("click", addTodo);

//Công việc 3:Xóa Todo

const deleteTodo = (id) => {
    console.log(id);
    const isConfirm = window.confirm("Bạn có muốn xóa không");
    if (!isConfirm) {
        return;
    }

    //B1:Xóa todo có id tương ứng trong mảng todoList
    //Xóa như thế nào: splice,filter
    //C1:findIndex
    let index = todoList.findIndex(t => t.id === id);
    todoList.splice(index, 1);

    //C2:Filter
    todoList = todoList.filter(t => t.id !== id);

    //B2:Render lại giao diện sau khi xóa
    saveData();
    renderTodoList();
}


//Công việc 4:Edit Todo
const editTodo = id => {};

//Công việc 5:Toggle status
const toggleStatus = id => {};

renderTodoList(todoList);