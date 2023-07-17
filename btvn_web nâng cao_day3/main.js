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

const authorEl = document.querySelector(".testimonials-container");
let html = "";
authorList.forEach(a => {
    html += `<div class="testimonials-container" style="background-color: ${a.color};">
    <i class="fas fa-quote-left"></i>

    <!-- Nội dung quote hiển thị ở đây -->
    <p class="text">${a.quote}</p>

    <!-- Tên tác giả hiển thị ở đây -->
    <strong class="name">${a.name}</strong>

    <div class="authors-container">
        <div class="author selected"><img src="https://randomuser.me/api/portraits/men/41.jpg" alt=""></div>
        <div class="author"><img src="https://randomuser.me/api/portraits/women/50.jpg" alt=""></div>
        <div class="author"><img src="https://randomuser.me/api/portraits/women/22.jpg" alt=""></div>
        <div class="author"><img src="https://randomuser.me/api/portraits/women/76.jpg" alt=""></div>
        <div class="author"><img src="https://randomuser.me/api/portraits/men/17.jpg" alt=""></div>
    </div>
</div>`
})