// Đặt thời gian đích cho đồng hồ đếm ngược (định dạng: "YYYY-MM-DD HH:MM:SS")
var targetDate = new Date("2023-11-17 23:59:59");

function updateCountdown() {
    var now = new Date();
    var timeRemaining = targetDate - now;

    // Tính toán số ngày, giờ, phút, giây còn lại
    var days = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
    var hours = Math.floor((timeRemaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((timeRemaining % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((timeRemaining % (1000 * 60)) / 1000);

    // Cập nhật giá trị đồng hồ đếm ngược trong các phần tử tương ứng
    document.getElementById('days').textContent = days.toString().padStart(2, '0');
    document.getElementById('hours').textContent = hours.toString().padStart(2, '0');
    document.getElementById('minutes').textContent = minutes.toString().padStart(2, '0');
    document.getElementById('seconds').textContent = seconds.toString().padStart(2, '0');

    // Kiểm tra nếu đã hết thời gian đếm ngược
    if (timeRemaining <= 0) {
        clearInterval(countdownInterval);
        document.getElementById('countdown').textContent = "Hết thời gian";
    }
}

// Cập nhật đồng hồ đếm ngược mỗi giây
var countdownInterval = setInterval(updateCountdown, 1000);