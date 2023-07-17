const authorList = [{
        name: "Mae West",
        quote: "You only live once, but if you do it right, once is enough.",
        image: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
        color: "#22A699"
    },
    {
        name: "Dr. Seuss",
        quote: "Don't cry because it's over, smile because it happened.",
        image: "https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzd8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
        color: "#0A6EBD"
    },
    {
        name: "Narcotics Anonymous",
        quote: "Insanity is doing the same thing, over and over again, but expecting different results.",
        image: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
        color: "#FFB84C"
    },
    {
        name: "Mark Twain",
        quote: "Good friends, good books, and a sleepy conscience: this is the ideal life.",
        image: "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM1fHxwZXJzb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
        color: "#F24C3D"
    }
]

const testimonialsContainerEl = document.querySelector('.testimonials-container');
const nameEl = document.querySelector(".name");
const textEl = document.querySelector(".text");
const authorsContainerEl = document.querySelector(".authors-container");

const renderAuthorImage = arr => {
    let html = "";
    arr.forEach(e => {
        html += `
            <div class="author">
                <img src="${e.image}" alt="${e.name}">
            </div>
        `
    });
    authorsContainerEl.innerHTML = html;

    const authorEls = document.querySelectorAll(".author");
    authorEls.forEach((e, i) => {
        e.addEventListener("click", () => {
            activeAuthor(arr, i);
        })
    })
}

const activeAuthor = (arr, index) => {
    // Active user (avatar to lên -> thêm "selected")
    const preSelectedEl = document.querySelector(".selected");
    if (preSelectedEl) {
        preSelectedEl.classList.remove("selected");
    }
    const currentEl = document.querySelector(`.author:nth-child(${index + 1})`);
    currentEl.classList.add("selected");

    // Hiển thị các thông tin liên quan (quote, name, color)
    const authorInfo = arr[index];
    nameEl.innerHTML = authorInfo.name;
    textEl.innerHTML = authorInfo.quote;
    testimonialsContainerEl.style.backgroundColor = authorInfo.color;
}

renderAuthorImage(authorList);
activeAuthor(authorList, 0)