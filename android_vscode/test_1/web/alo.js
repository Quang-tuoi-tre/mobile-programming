function showRatingMessage(value) {
    const messages = ["Dở tệ", "Không hài lòng", "Bình thường", "Hài lòng", "Tuyệt vời"];
    const stars = document.querySelectorAll(".star");

    // Cập nhật thông báo đánh giá
    document.getElementById("rating-message").innerText = messages[value - 1];

    // Tô màu các ngôi sao tương ứng
    stars.forEach((star, index) => {
        if (index < value) {
            star.classList.add("hovered");
        } else {
            star.classList.remove("hovered");
        }
    });
}

function resetHover() {
    const stars = document.querySelectorAll(".star");

    // Xóa màu hover của các ngôi sao
    stars.forEach((star) => {
        star.classList.remove("hovered");
    });

    // Xóa thông báo
    document.getElementById("rating-message").innerText = "";
}

function submitRating(value) {

    const stars = document.querySelectorAll(".star");

    // Tô màu cố định các ngôi sao sau khi chọn
    stars.forEach((star, index) => {
        if (index < value) {
            star.classList.add("selected");
        } else {
            star.classList.remove("selected");
        }
    });
                                    document.getElementById("star-value").value = value;


    // Hiển thị banner thông báo
    showBanner("Cảm ơn bạn đã chọn " + value + " sao. Bấm 'Gửi đánh giá' để lưu lại.");
    }
    function showBanner(message) {
    const banner = document.createElement("div");
    banner.id = "success-banner";
    banner.style.position = "fixed";
    banner.style.top = "20%";
    banner.style.left = "50%";
    banner.style.transform = "translate(-50%, -50%)";
    banner.style.backgroundColor = "#28a745";
    banner.style.color = "white";
    banner.style.padding = "15px";
    banner.style.borderRadius = "8px";
    banner.style.boxShadow = "0 4px 8px rgba(0, 0, 0, 0.2)";
    banner.style.zIndex = "1000";
    banner.innerHTML = `<i class="fa fa-check-circle" style="margin-right: 8px;"></i>${message}`;

    document.body.appendChild(banner);

    setTimeout(() => {
        banner.remove();
    }, 3000);
}