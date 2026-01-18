# Footer replacement script - applies elegant footer to all pages

$englishFooter = @'
    <footer style="background: linear-gradient(180deg, #02020a 0%, #000000 100%); border-top: 1px solid rgba(197, 160, 89, 0.3); padding: 80px 0 30px; position: relative;">
        <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; background: radial-gradient(circle at top right, rgba(197, 160, 89, 0.05) 0%, transparent 50%); pointer-events: none;"></div>
        <div class="container" style="position: relative; z-index: 1;">
            <div style="text-align: center; margin-bottom: 60px; padding-bottom: 50px; border-bottom: 1px solid rgba(255,255,255,0.1);">
                <img src="images/logo.png" alt="IGM Logo" style="width: 120px; margin-bottom: 30px; filter: drop-shadow(0 0 20px rgba(197, 160, 89, 0.3));">
                <h3 style="color: white; font-size: 1.8rem; font-weight: 700; margin-bottom: 15px; letter-spacing: 1px;">International Group for Mining,<br>Construction, and Agricultural Development</h3>
                <p style="color: var(--accent-gold); font-size: 1.1rem; font-weight: 300; letter-spacing: 2px;">IGM</p>
            </div>

            <div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 50px; margin-bottom: 60px;">
                <div>
                    <h4 style="color: var(--accent-gold); margin-bottom: 25px; font-size: 1.1rem; text-transform: uppercase; letter-spacing: 2px;">Quick Links</h4>
                    <ul style="list-style: none; padding: 0;">
                        <li style="margin-bottom: 12px;"><a href="index.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">Home</a></li>
                        <li style="margin-bottom: 12px;"><a href="subsidiaries.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">Our Group</a></li>
                        <li style="margin-bottom: 12px;"><a href="services.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">Services</a></li>
                        <li style="margin-bottom: 12px;"><a href="investments.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">Investments</a></li>
                        <li style="margin-bottom: 12px;"><a href="portfolio.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">Portfolio</a></li>
                    </ul>
                </div>

                <div>
                    <h4 style="color: var(--accent-gold); margin-bottom: 25px; font-size: 1.1rem; text-transform: uppercase; letter-spacing: 2px;">Global Presence</h4>
                    <ul style="list-style: none; padding: 0;">
                        <li style="margin-bottom: 12px;"><a href="global-branches.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">Global Branches</a></li>
                        <li style="margin-bottom: 12px;"><a href="igm-usa.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">IGM USA</a></li>
                        <li style="margin-bottom: 12px;"><a href="igm-canada.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">IGM Canada</a></li>
                    </ul>
                </div>

                <div>
                    <h4 style="color: var(--accent-gold); margin-bottom: 25px; font-size: 1.1rem; text-transform: uppercase; letter-spacing: 2px;">Contact</h4>
                    <p style="color: var(--text-muted); margin-bottom: 15px; line-height: 1.8;">
                        5 Tower D, Ammar Plaza Towers<br>
                        Hafez Ramadan Street, off Makram Ebeid Street<br>
                        Nasr City, Cairo, Egypt
                    </p>
                    <p style="color: var(--text-muted); margin-bottom: 10px;">
                        <a href="tel:0223493101" style="color: var(--accent-gold); text-decoration: none;">02 2349 3101</a>
                    </p>
                    <p style="color: var(--text-muted);">
                        <a href="mailto:international.mining200@gmail.com" style="color: var(--accent-gold); text-decoration: none; font-size: 0.9rem;">international.mining200@gmail.com</a>
                    </p>
                </div>
            </div>

            <div style="border-top: 1px solid rgba(255,255,255,0.05); padding-top: 30px; text-align: center;">
                <p style="color: var(--text-muted); font-size: 0.9rem;">&copy; 2026 International Group for Mining, Construction, and Agricultural Development. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
'@

$arabicFooter = @'
    <footer style="background: linear-gradient(180deg, #02020a 0%, #000000 100%); border-top: 1px solid rgba(197, 160, 89, 0.3); padding: 80px 0 30px; position: relative;" dir="rtl">
        <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; background: radial-gradient(circle at top left, rgba(197, 160, 89, 0.05) 0%, transparent 50%); pointer-events: none;"></div>
        <div class="container" style="position: relative; z-index: 1;">
            <div style="text-align: center; margin-bottom: 60px; padding-bottom: 50px; border-bottom: 1px solid rgba(255,255,255,0.1);">
                <img src="images/logo.png" alt="IGM Logo" style="width: 120px; margin-bottom: 30px; filter: drop-shadow(0 0 20px rgba(197, 160, 89, 0.3));">
                <h3 style="color: white; font-size: 1.8rem; font-weight: 700; margin-bottom: 15px; letter-spacing: 1px; font-family: 'Cairo', sans-serif;">المجموعة الدولية للتعدين<br>والانشاءات والتنمية الزراعية</h3>
                <p style="color: var(--accent-gold); font-size: 1.1rem; font-weight: 300; letter-spacing: 2px;">IGM</p>
            </div>

            <div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 50px; margin-bottom: 60px;">
                <div>
                    <h4 style="color: var(--accent-gold); margin-bottom: 25px; font-size: 1.1rem; text-transform: uppercase; letter-spacing: 2px;">روابط سريعة</h4>
                    <ul style="list-style: none; padding: 0;">
                        <li style="margin-bottom: 12px;"><a href="ar.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">الرئيسية</a></li>
                        <li style="margin-bottom: 12px;"><a href="subsidiaries-ar.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">مجموعتنا</a></li>
                        <li style="margin-bottom: 12px;"><a href="services-ar.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">خدماتنا</a></li>
                        <li style="margin-bottom: 12px;"><a href="investments-ar.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">استثماراتنا</a></li>
                        <li style="margin-bottom: 12px;"><a href="portfolio-ar.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">معرض الأعمال</a></li>
                    </ul>
                </div>

                <div>
                    <h4 style="color: var(--accent-gold); margin-bottom: 25px; font-size: 1.1rem; text-transform: uppercase; letter-spacing: 2px;">التواجد العالمي</h4>
                    <ul style="list-style: none; padding: 0;">
                        <li style="margin-bottom: 12px;"><a href="global-branches-ar.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">فروعنا العالمية</a></li>
                        <li style="margin-bottom: 12px;"><a href="igm-usa-ar.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">IGM الولايات المتحدة</a></li>
                        <li style="margin-bottom: 12px;"><a href="igm-canada-ar.html" style="color: var(--text-muted); text-decoration: none; transition: color 0.3s;" onmouseover="this.style.color='#c5a059'" onmouseout="this.style.color='#8892b0'">IGM كندا</a></li>
                    </ul>
                </div>

                <div>
                    <h4 style="color: var(--accent-gold); margin-bottom: 25px; font-size: 1.1rem; text-transform: uppercase; letter-spacing: 2px;">تواصل معنا</h4>
                    <p style="color: var(--text-muted); margin-bottom: 15px; line-height: 1.8;">
                        5 برج D، أبراج عمار بلازا<br>
                        شارع حافظ رمضان، متفرع من شارع مكرم عبيد<br>
                        مدينة نصر، القاهرة، مصر
                    </p>
                    <p style="color: var(--text-muted); margin-bottom: 10px;">
                        <a href="tel:0223493101" style="color: var(--accent-gold); text-decoration: none;">02 2349 3101</a>
                    </p>
                    <p style="color: var(--text-muted);">
                        <a href="mailto:international.mining200@gmail.com" style="color: var(--accent-gold); text-decoration: none; font-size: 0.9rem;">international.mining200@gmail.com</a>
                    </p>
                </div>
            </div>

            <div style="border-top: 1px solid rgba(255,255,255,0.05); padding-top: 30px; text-align: center;">
                <p style="color: var(--text-muted); font-size: 0.9rem;">&copy; 2026 المجموعة الدولية للتعدين والانشاءات والتنمية الزراعية. جميع الحقوق محفوظة.</p>
            </div>
        </div>
    </footer>
'@

# Function to replace footer in a file
function Replace-Footer {
    param($FilePath, $NewFooter, $Language)
    
    Write-Host "Processing: $FilePath"
    
    $content = Get-Content -Path $FilePath -Raw -Encoding UTF8
    
    # Find and replace footer (from <footer to </footer>)
    $pattern = '(?s)<footer[^>]*>.*?</footer>'
    $newContent = $content -replace $pattern, $NewFooter
    
    # Save with UTF-8 encoding
    $newContent | Set-Content -Path $FilePath -Encoding UTF8 -NoNewline
}

# English files
$englishFiles = @(
    "subsidiaries.html", "services.html", "portfolio.html", "investments.html",
    "igm-usa.html", "igm-canada.html", "global-branches.html",
    "project-809-w41st.html", "project-burrard-street.html", "project-fairview-foster.html",
    "project-lee-industrial.html", "project-no3-road.html", "project-rochester-madore.html",
    "project-template.html"
)

# Arabic files
$arabicFiles = @(
    "ar.html", "subsidiaries-ar.html", "services-ar.html", "portfolio-ar.html", "investments-ar.html",
    "igm-usa-ar.html", "igm-canada-ar.html", "global-branches-ar.html",
    "project-809-w41st-ar.html", "project-burrard-street-ar.html", "project-fairview-foster-ar.html",
    "project-lee-industrial-ar.html", "project-no3-road-ar.html", "project-rochester-madore-ar.html"
)

# Apply English footer
foreach ($file in $englishFiles) {
    if (Test-Path $file) {
        Replace-Footer -FilePath $file -NewFooter $englishFooter -Language "English"
    }
}

# Apply Arabic footer
foreach ($file in $arabicFiles) {
    if (Test-Path $file) {
        Replace-Footer -FilePath $file -NewFooter $arabicFooter -Language "Arabic"
    }
}

Write-Host "`nFooter replacement complete!"
Write-Host "English files updated: $($englishFiles.Count)"
Write-Host "Arabic files updated: $($arabicFiles.Count)"
