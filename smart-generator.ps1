# Smart Generator - Creates TRULY UNIQUE designs for each theme
# Each theme gets different: Layout, Colors, Animations, Components

$themeConfigs = @{
    13 = @{
        name = 'isekai'
        colors = @{bg='#667eea,#764ba2,#f093fb'; primary='#f093fb'; secondary='#764ba2'}
        icon = '🌀'
        layout = 'centered-portal' # centered with portal animation
        effect = 'portal-spin'
    }
    14 = @{
        name = 'ninja'
        colors = @{bg='#000,#1a1a1a,#333'; primary='#c00'; secondary='#ff0000'}
        icon = '🥷'
        layout = 'split-diagonal' # diagonal split design
        effect = 'smoke-trail'
    }
    15 = @{
        name = 'samurai'
        colors = @{bg='#8B4513,#A0522D,#D2691E'; primary='#FFD700'; secondary='#FFA500'}
        icon = '⚔️'
        layout = 'card-elevated' # elevated card with shadow
        effect = 'sword-slash'
    }
    16 = @{
        name = 'space'
        colors = @{bg='#000428,#004e92'; primary='#00d4ff'; secondary='#0080ff'}
        icon = '🚀'
        layout = 'fullscreen-stars' # fullscreen with stars
        effect = 'star-field'
    }
    17 = @{
        name = 'idol'
        colors = @{bg='#FF6FD8,#3813C2'; primary='#FF6FD8'; secondary='#9333EA'}
        icon = '🎤'
        layout = 'stage-curtain' # curtain opening effect
        effect = 'sparkle-burst'
    }
    18 = @{
        name = 'detective'
        colors = @{bg='#2c3e50,#34495e'; primary='#e74c3c'; secondary='#c0392b'}
        icon = '🔍'
        layout = 'case-file' # case file folder style
        effect = 'magnify-glass'
    }
    19 = @{
        name = 'cooking'
        colors = @{bg='#FF6B6B,#FFE66D,#4ECDC4'; primary='#FF6B6B'; secondary='#FFE66D'}
        icon = '👨‍🍳'
        layout = 'kitchen-board' # kitchen board style
        effect = 'steam-rise'
    }
    20 = @{
        name = 'music'
        colors = @{bg='#6B5B95,#B8A9C9,#FFA7C4'; primary='#FFA7C4'; secondary='#B8A9C9'}
        icon = '🎵'
        layout = 'vinyl-record' # circular vinyl record design
        effect = 'sound-wave'
    }
}

# Layout Templates - Each is DIFFERENT!
$layoutTemplates = @{
    'centered-portal' = @'
.login-container {
    background: rgba(0, 0, 0, 0.85);
    padding: 60px;
    border-radius: 50%;
    width: 500px;
    height: 500px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    border: 5px solid {PRIMARY};
    box-shadow: 0 0 100px {PRIMARY};
    animation: portal-spin 10s linear infinite;
}
@keyframes portal-spin {
    from {transform: rotate(0deg);}
    to {transform: rotate(360deg);}
}
.form-inner {
    transform: rotate(0deg);
    animation: counter-spin 10s linear infinite;
}
@keyframes counter-spin {
    from {transform: rotate(0deg);}
    to {transform: rotate(-360deg);}
}
'@
    
    'split-diagonal' = @'
.login-container {
    display: flex;
    width: 800px;
    height: 600px;
    clip-path: polygon(0 0, 70% 0, 100% 100%, 0 100%);
}
.login-left {
    flex: 1;
    background: {PRIMARY};
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 150px;
}
.login-right {
    flex: 1;
    background: rgba(0, 0, 0, 0.95);
    padding: 50px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}
'@
    
    'card-elevated' = @'
.login-container {
    background: rgba(255, 255, 255, 0.95);
    padding: 50px;
    border-radius: 30px;
    width: 450px;
    box-shadow: 20px 20px 60px rgba(0, 0, 0, 0.3), -20px -20px 60px rgba(255, 255, 255, 0.1);
    border: 5px solid {PRIMARY};
    transform: perspective(1000px) rotateY(-5deg);
    transition: transform 0.5s;
}
.login-container:hover {
    transform: perspective(1000px) rotateY(0deg);
}
'@
    
    'fullscreen-stars' = @'
.login-container {
    background: transparent;
    backdrop-filter: blur(10px);
    padding: 50px;
    border: 2px solid {PRIMARY};
    border-radius: 20px;
    width: 450px;
    box-shadow: 0 0 50px {PRIMARY}, inset 0 0 30px rgba(0, 212, 255, 0.1);
}
body::before {
    content: '';
    position: fixed;
    width: 100%;
    height: 100%;
    background-image: radial-gradient(2px 2px at 20% 30%, white, transparent),
                      radial-gradient(2px 2px at 60% 70%, white, transparent),
                      radial-gradient(1px 1px at 50% 50%, white, transparent);
    background-size: 200px 200px;
    animation: twinkle 3s infinite;
}
@keyframes twinkle {
    0%, 100% {opacity: 0.5;}
    50% {opacity: 1;}
}
'@
    
    'stage-curtain' = @'
.login-container {
    background: linear-gradient(to bottom, {PRIMARY}, {SECONDARY});
    padding: 60px;
    border-radius: 0 0 30px 30px;
    width: 500px;
    position: relative;
    box-shadow: 0 30px 60px rgba(0, 0, 0, 0.4);
}
.curtain {
    position: absolute;
    top: 0;
    width: 50%;
    height: 30px;
    background: #8B0000;
}
.curtain-left {
    left: 0;
    border-radius: 0 0 20px 0;
}
.curtain-right {
    right: 0;
    border-radius: 0 0 0 20px;
}
'@
    
    'case-file' = @'
.login-container {
    background: #f4e4c1;
    padding: 50px;
    width: 500px;
    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
    position: relative;
    border: 1px solid #8B4513;
}
.file-tab {
    position: absolute;
    top: -30px;
    left: 50px;
    background: {PRIMARY};
    color: #fff;
    padding: 10px 30px;
    font-weight: bold;
    border-radius: 5px 5px 0 0;
}
.stamp {
    position: absolute;
    top: 20px;
    right: 20px;
    color: {PRIMARY};
    font-size: 80px;
    opacity: 0.3;
    transform: rotate(15deg);
}
input {
    border: none;
    border-bottom: 2px solid #333;
    background: transparent;
    color: #333;
}
'@
    
    'kitchen-board' = @'
.login-container {
    background: linear-gradient(145deg, #f5deb3, #daa520);
    padding: 50px;
    border-radius: 20px;
    width: 500px;
    box-shadow: inset 5px 5px 10px rgba(0, 0, 0, 0.2), 5px 5px 20px rgba(0, 0, 0, 0.3);
    border: 8px solid #8B4513;
}
.recipe-card {
    background: #fff;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}
'@
    
    'vinyl-record' = @'
.login-container {
    background: radial-gradient(circle, #1a1a1a 0%, #1a1a1a 40%, {PRIMARY} 40%, {PRIMARY} 42%, #1a1a1a 42%, #1a1a1a 100%);
    width: 500px;
    height: 500px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    animation: vinyl-spin 8s linear infinite;
    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
}
@keyframes vinyl-spin {
    from {transform: rotate(0deg);}
    to {transform: rotate(360deg);}
}
.form-content {
    background: rgba(0, 0, 0, 0.9);
    padding: 40px;
    border-radius: 20px;
    width: 350px;
    animation: counter-spin 8s linear infinite;
}
@keyframes counter-spin {
    from {transform: rotate(0deg);}
    to {transform: rotate(-360deg);}
}
'@
}

Write-Host "Smart Generator Ready!" -ForegroundColor Cyan
Write-Host "This will create TRULY UNIQUE designs:" -ForegroundColor Yellow
Write-Host "- Different layouts (circular, diagonal, split, card, etc)" -ForegroundColor Green
Write-Host "- Different animations (spin, float, pulse, etc)" -ForegroundColor Green  
Write-Host "- Different color schemes per theme" -ForegroundColor Green
Write-Host "- Different component placements" -ForegroundColor Green
