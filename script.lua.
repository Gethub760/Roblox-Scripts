-- ================================================================
-- 🌍 Roblox Country Server Hopper UI
-- Draggable | Closable | Searchable | 195+ Countries | Auto-Hop
-- Place ID  : 1537690962
-- Generated : 2025 | For Educational Use Only
-- ================================================================

local TeleportService = game:GetService("TeleportService")
local HttpService     = game:GetService("HttpService")
local Players         = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService      = game:GetService("RunService")
local LocalPlayer     = Players.LocalPlayer

-- ── CONFIG ─────────────────────────────────────────────────────
local CONFIG = {
    PlaceId    = 1537690962,
    RetryDelay = 3,
    MaxPlayers = 20,
}
-- ───────────────────────────────────────────────────────────────

-- ── COUNTRIES TABLE (195) ──────────────────────────────────────
local COUNTRIES = {
    {code="AF", name="Afghanistan", flag="🇦🇫", region="ap-south-1", pingMin=150, pingMax=280},
    {code="AL", name="Albania", flag="🇦🇱", region="eu-central-1", pingMin=90, pingMax=170},
    {code="DZ", name="Algeria", flag="🇩🇿", region="eu-west-1", pingMin=80, pingMax=160},
    {code="AD", name="Andorra", flag="🇦🇩", region="eu-west-3", pingMin=80, pingMax=150},
    {code="AO", name="Angola", flag="🇦🇴", region="af-south-1", pingMin=150, pingMax=280},
    {code="AG", name="Antigua and Barbuda", flag="🇦🇬", region="us-east-1", pingMin=40, pingMax=100},
    {code="AR", name="Argentina", flag="🇦🇷", region="sa-east-1", pingMin=120, pingMax=220},
    {code="AM", name="Armenia", flag="🇦🇲", region="eu-east-1", pingMin=100, pingMax=190},
    {code="AU", name="Australia", flag="🇦🇺", region="ap-southeast-2", pingMin=200, pingMax=320},
    {code="AT", name="Austria", flag="🇦🇹", region="eu-central-1", pingMin=85, pingMax=155},
    {code="AZ", name="Azerbaijan", flag="🇦🇿", region="eu-east-1", pingMin=100, pingMax=190},
    {code="BS", name="Bahamas", flag="🇧🇸", region="us-east-1", pingMin=20, pingMax=70},
    {code="BH", name="Bahrain", flag="🇧🇭", region="me-south-1", pingMin=120, pingMax=230},
    {code="BD", name="Bangladesh", flag="🇧🇩", region="ap-south-1", pingMin=145, pingMax=260},
    {code="BB", name="Barbados", flag="🇧🇧", region="us-east-1", pingMin=40, pingMax=100},
    {code="BY", name="Belarus", flag="🇧🇾", region="eu-east-1", pingMin=90, pingMax=170},
    {code="BE", name="Belgium", flag="🇧🇪", region="eu-west-1", pingMin=75, pingMax=145},
    {code="BZ", name="Belize", flag="🇧🇿", region="us-central-1", pingMin=30, pingMax=90},
    {code="BJ", name="Benin", flag="🇧🇯", region="af-south-1", pingMin=150, pingMax=280},
    {code="BT", name="Bhutan", flag="🇧🇹", region="ap-south-1", pingMin=150, pingMax=270},
    {code="BO", name="Bolivia", flag="🇧🇴", region="sa-east-1", pingMin=130, pingMax=230},
    {code="BA", name="Bosnia", flag="🇧🇦", region="eu-central-1", pingMin=90, pingMax=165},
    {code="BW", name="Botswana", flag="🇧🇼", region="af-south-1", pingMin=140, pingMax=260},
    {code="BR", name="Brazil", flag="🇧🇷", region="sa-east-1", pingMin=100, pingMax=200},
    {code="BN", name="Brunei", flag="🇧🇳", region="ap-southeast-1", pingMin=170, pingMax=280},
    {code="BG", name="Bulgaria", flag="🇧🇬", region="eu-central-1", pingMin=90, pingMax=165},
    {code="BF", name="Burkina Faso", flag="🇧🇫", region="af-south-1", pingMin=160, pingMax=290},
    {code="BI", name="Burundi", flag="🇧🇮", region="af-south-1", pingMin=155, pingMax=285},
    {code="CV", name="Cabo Verde", flag="🇨🇻", region="eu-west-1", pingMin=90, pingMax=170},
    {code="KH", name="Cambodia", flag="🇰🇭", region="ap-southeast-1", pingMin=175, pingMax=285},
    {code="CM", name="Cameroon", flag="🇨🇲", region="af-south-1", pingMin=155, pingMax=280},
    {code="CA", name="Canada", flag="🇨🇦", region="ca-central-1", pingMin=20, pingMax=70},
    {code="CF", name="Central African Republic", flag="🇨🇫", region="af-south-1", pingMin=160, pingMax=295},
    {code="TD", name="Chad", flag="🇹🇩", region="af-south-1", pingMin=160, pingMax=290},
    {code="CL", name="Chile", flag="🇨🇱", region="sa-east-1", pingMin=120, pingMax=220},
    {code="CN", name="China", flag="🇨🇳", region="ap-northeast-1", pingMin=155, pingMax=270},
    {code="CO", name="Colombia", flag="🇨🇴", region="sa-east-1", pingMin=110, pingMax=210},
    {code="KM", name="Comoros", flag="🇰🇲", region="af-south-1", pingMin=160, pingMax=295},
    {code="CG", name="Congo", flag="🇨🇬", region="af-south-1", pingMin=155, pingMax=285},
    {code="CD", name="Congo DR", flag="🇨🇩", region="af-south-1", pingMin=155, pingMax=290},
    {code="CR", name="Costa Rica", flag="🇨🇷", region="us-central-1", pingMin=40, pingMax=100},
    {code="CI", name="Côte d'Ivoire", flag="🇨🇮", region="af-south-1", pingMin=155, pingMax=285},
    {code="HR", name="Croatia", flag="🇭🇷", region="eu-central-1", pingMin=88, pingMax=160},
    {code="CU", name="Cuba", flag="🇨🇺", region="us-east-1", pingMin=30, pingMax=90},
    {code="CY", name="Cyprus", flag="🇨🇾", region="eu-east-1", pingMin=95, pingMax=175},
    {code="CZ", name="Czech Republic", flag="🇨🇿", region="eu-central-1", pingMin=85, pingMax=155},
    {code="DK", name="Denmark", flag="🇩🇰", region="eu-north-1", pingMin=80, pingMax=150},
    {code="DJ", name="Djibouti", flag="🇩🇯", region="me-south-1", pingMin=130, pingMax=250},
    {code="DM", name="Dominica", flag="🇩🇲", region="us-east-1", pingMin=35, pingMax=95},
    {code="DO", name="Dominican Republic", flag="🇩🇴", region="us-east-1", pingMin=30, pingMax=85},
    {code="EC", name="Ecuador", flag="🇪🇨", region="sa-east-1", pingMin=115, pingMax=215},
    {code="EG", name="Egypt", flag="🇪🇬", region="me-south-1", pingMin=110, pingMax=220},
    {code="SV", name="El Salvador", flag="🇸🇻", region="us-central-1", pingMin=35, pingMax=95},
    {code="GQ", name="Equatorial Guinea", flag="🇬🇶", region="af-south-1", pingMin=155, pingMax=285},
    {code="ER", name="Eritrea", flag="🇪🇷", region="af-south-1", pingMin=160, pingMax=295},
    {code="EE", name="Estonia", flag="🇪🇪", region="eu-north-1", pingMin=80, pingMax=150},
    {code="SZ", name="Eswatini", flag="🇸🇿", region="af-south-1", pingMin=135, pingMax=260},
    {code="ET", name="Ethiopia", flag="🇪🇹", region="af-south-1", pingMin=155, pingMax=285},
    {code="FJ", name="Fiji", flag="🇫🇯", region="ap-southeast-2", pingMin=210, pingMax=330},
    {code="FI", name="Finland", flag="🇫🇮", region="eu-north-1", pingMin=80, pingMax=150},
    {code="FR", name="France", flag="🇫🇷", region="eu-west-3", pingMin=75, pingMax=145},
    {code="GA", name="Gabon", flag="🇬🇦", region="af-south-1", pingMin=155, pingMax=285},
    {code="GM", name="Gambia", flag="🇬🇲", region="eu-west-1", pingMin=95, pingMax=175},
    {code="GE", name="Georgia", flag="🇬🇪", region="eu-east-1", pingMin=100, pingMax=185},
    {code="DE", name="Germany", flag="🇩🇪", region="eu-central-1", pingMin=80, pingMax=150},
    {code="GH", name="Ghana", flag="🇬🇭", region="af-south-1", pingMin=150, pingMax=280},
    {code="GR", name="Greece", flag="🇬🇷", region="eu-central-1", pingMin=90, pingMax=165},
    {code="GD", name="Grenada", flag="🇬🇩", region="us-east-1", pingMin=35, pingMax=95},
    {code="GT", name="Guatemala", flag="🇬🇹", region="us-central-1", pingMin=35, pingMax=95},
    {code="GN", name="Guinea", flag="🇬🇳", region="eu-west-1", pingMin=100, pingMax=185},
    {code="GW", name="Guinea-Bissau", flag="🇬🇼", region="eu-west-1", pingMin=100, pingMax=185},
    {code="GY", name="Guyana", flag="🇬🇾", region="sa-east-1", pingMin=100, pingMax=200},
    {code="HT", name="Haiti", flag="🇭🇹", region="us-east-1", pingMin=30, pingMax=85},
    {code="HN", name="Honduras", flag="🇭🇳", region="us-central-1", pingMin=35, pingMax=95},
    {code="HU", name="Hungary", flag="🇭🇺", region="eu-central-1", pingMin=87, pingMax=158},
    {code="IS", name="Iceland", flag="🇮🇸", region="eu-west-1", pingMin=82, pingMax=155},
    {code="IN", name="India", flag="🇮🇳", region="ap-south-1", pingMin=140, pingMax=255},
    {code="ID", name="Indonesia", flag="🇮🇩", region="ap-southeast-1", pingMin=170, pingMax=285},
    {code="IR", name="Iran", flag="🇮🇷", region="me-south-1", pingMin=125, pingMax=240},
    {code="IQ", name="Iraq", flag="🇮🇶", region="me-south-1", pingMin=120, pingMax=235},
    {code="IE", name="Ireland", flag="🇮🇪", region="eu-west-1", pingMin=80, pingMax=150},
    {code="IL", name="Israel", flag="🇮🇱", region="me-south-1", pingMin=110, pingMax=215},
    {code="IT", name="Italy", flag="🇮🇹", region="eu-central-1", pingMin=83, pingMax=153},
    {code="JM", name="Jamaica", flag="🇯🇲", region="us-east-1", pingMin=30, pingMax=85},
    {code="JP", name="Japan", flag="🇯🇵", region="ap-northeast-1", pingMin=150, pingMax=260},
    {code="JO", name="Jordan", flag="🇯🇴", region="me-south-1", pingMin=115, pingMax=225},
    {code="KZ", name="Kazakhstan", flag="🇰🇿", region="eu-east-1", pingMin=110, pingMax=210},
    {code="KE", name="Kenya", flag="🇰🇪", region="af-south-1", pingMin=145, pingMax=270},
    {code="KI", name="Kiribati", flag="🇰🇮", region="ap-southeast-2", pingMin=220, pingMax=340},
    {code="KW", name="Kuwait", flag="🇰🇼", region="me-south-1", pingMin=115, pingMax=225},
    {code="KG", name="Kyrgyzstan", flag="🇰🇬", region="ap-south-1", pingMin=150, pingMax=265},
    {code="LA", name="Laos", flag="🇱🇦", region="ap-southeast-1", pingMin=175, pingMax=285},
    {code="LV", name="Latvia", flag="🇱🇻", region="eu-north-1", pingMin=82, pingMax=152},
    {code="LB", name="Lebanon", flag="🇱🇧", region="me-south-1", pingMin=112, pingMax=222},
    {code="LS", name="Lesotho", flag="🇱🇸", region="af-south-1", pingMin=138, pingMax=260},
    {code="LR", name="Liberia", flag="🇱🇷", region="eu-west-1", pingMin=100, pingMax=185},
    {code="LY", name="Libya", flag="🇱🇾", region="eu-central-1", pingMin=100, pingMax=185},
    {code="LI", name="Liechtenstein", flag="🇱🇮", region="eu-central-1", pingMin=83, pingMax=153},
    {code="LT", name="Lithuania", flag="🇱🇹", region="eu-north-1", pingMin=82, pingMax=152},
    {code="LU", name="Luxembourg", flag="🇱🇺", region="eu-west-1", pingMin=78, pingMax=148},
    {code="MG", name="Madagascar", flag="🇲🇬", region="af-south-1", pingMin=150, pingMax=280},
    {code="MW", name="Malawi", flag="🇲🇼", region="af-south-1", pingMin=148, pingMax=275},
    {code="MY", name="Malaysia", flag="🇲🇾", region="ap-southeast-1", pingMin=165, pingMax=275},
    {code="MV", name="Maldives", flag="🇲🇻", region="ap-south-1", pingMin=148, pingMax=268},
    {code="ML", name="Mali", flag="🇲🇱", region="eu-west-1", pingMin=105, pingMax=190},
    {code="MT", name="Malta", flag="🇲🇹", region="eu-central-1", pingMin=88, pingMax=160},
    {code="MH", name="Marshall Islands", flag="🇲🇭", region="ap-northeast-1", pingMin=185, pingMax=305},
    {code="MR", name="Mauritania", flag="🇲🇷", region="eu-west-1", pingMin=100, pingMax=185},
    {code="MU", name="Mauritius", flag="🇲🇺", region="af-south-1", pingMin=148, pingMax=275},
    {code="MX", name="Mexico", flag="🇲🇽", region="us-central-1", pingMin=25, pingMax=80},
    {code="FM", name="Micronesia", flag="🇫🇲", region="ap-northeast-1", pingMin=180, pingMax=300},
    {code="MD", name="Moldova", flag="🇲🇩", region="eu-east-1", pingMin=95, pingMax=175},
    {code="MC", name="Monaco", flag="🇲🇨", region="eu-west-3", pingMin=78, pingMax=148},
    {code="MN", name="Mongolia", flag="🇲🇳", region="ap-northeast-1", pingMin=165, pingMax=275},
    {code="ME", name="Montenegro", flag="🇲🇪", region="eu-central-1", pingMin=90, pingMax=165},
    {code="MA", name="Morocco", flag="🇲🇦", region="eu-west-1", pingMin=88, pingMax=165},
    {code="MZ", name="Mozambique", flag="🇲🇿", region="af-south-1", pingMin=145, pingMax=270},
    {code="MM", name="Myanmar", flag="🇲🇲", region="ap-southeast-1", pingMin=175, pingMax=285},
    {code="NA", name="Namibia", flag="🇳🇦", region="af-south-1", pingMin=140, pingMax=265},
    {code="NR", name="Nauru", flag="🇳🇷", region="ap-southeast-2", pingMin=215, pingMax=335},
    {code="NP", name="Nepal", flag="🇳🇵", region="ap-south-1", pingMin=148, pingMax=265},
    {code="NL", name="Netherlands", flag="🇳🇱", region="eu-west-1", pingMin=75, pingMax=145},
    {code="NZ", name="New Zealand", flag="🇳🇿", region="ap-southeast-2", pingMin=205, pingMax=325},
    {code="NI", name="Nicaragua", flag="🇳🇮", region="us-central-1", pingMin=35, pingMax=95},
    {code="NE", name="Niger", flag="🇳🇪", region="af-south-1", pingMin=155, pingMax=285},
    {code="NG", name="Nigeria", flag="🇳🇬", region="af-south-1", pingMin=148, pingMax=278},
    {code="MK", name="North Macedonia", flag="🇲🇰", region="eu-central-1", pingMin=90, pingMax=165},
    {code="NO", name="Norway", flag="🇳🇴", region="eu-north-1", pingMin=80, pingMax=150},
    {code="OM", name="Oman", flag="🇴🇲", region="me-south-1", pingMin=118, pingMax=228},
    {code="PK", name="Pakistan", flag="🇵🇰", region="ap-south-1", pingMin=143, pingMax=258},
    {code="PW", name="Palau", flag="🇵🇼", region="ap-northeast-1", pingMin=178, pingMax=298},
    {code="PS", name="Palestine", flag="🇵🇸", region="me-south-1", pingMin=112, pingMax=222},
    {code="PA", name="Panama", flag="🇵🇦", region="us-central-1", pingMin=40, pingMax=100},
    {code="PG", name="Papua New Guinea", flag="🇵🇬", region="ap-southeast-2", pingMin=210, pingMax=330},
    {code="PY", name="Paraguay", flag="🇵🇾", region="sa-east-1", pingMin=120, pingMax=220},
    {code="PE", name="Peru", flag="🇵🇪", region="sa-east-1", pingMin=115, pingMax=215},
    {code="PH", name="Philippines", flag="🇵🇭", region="ap-southeast-1", pingMin=168, pingMax=278},
    {code="PL", name="Poland", flag="🇵🇱", region="eu-central-1", pingMin=85, pingMax=155},
    {code="PT", name="Portugal", flag="🇵🇹", region="eu-west-1", pingMin=78, pingMax=148},
    {code="QA", name="Qatar", flag="🇶🇦", region="me-south-1", pingMin=118, pingMax=228},
    {code="RO", name="Romania", flag="🇷🇴", region="eu-central-1", pingMin=90, pingMax=165},
    {code="RU", name="Russia", flag="🇷🇺", region="eu-east-1", pingMin=100, pingMax=185},
    {code="RW", name="Rwanda", flag="🇷🇼", region="af-south-1", pingMin=150, pingMax=280},
    {code="KN", name="Saint Kitts and Nevis", flag="🇰🇳", region="us-east-1", pingMin=35, pingMax=90},
    {code="LC", name="Saint Lucia", flag="🇱🇨", region="us-east-1", pingMin=35, pingMax=90},
    {code="VC", name="Saint Vincent", flag="🇻🇨", region="us-east-1", pingMin=35, pingMax=90},
    {code="WS", name="Samoa", flag="🇼🇸", region="ap-southeast-2", pingMin=215, pingMax=335},
    {code="SM", name="San Marino", flag="🇸🇲", region="eu-central-1", pingMin=85, pingMax=155},
    {code="ST", name="Sao Tome", flag="🇸🇹", region="af-south-1", pingMin=155, pingMax=285},
    {code="SA", name="Saudi Arabia", flag="🇸🇦", region="me-south-1", pingMin=115, pingMax=225},
    {code="SN", name="Senegal", flag="🇸🇳", region="eu-west-1", pingMin=100, pingMax=185},
    {code="RS", name="Serbia", flag="🇷🇸", region="eu-central-1", pingMin=90, pingMax=165},
    {code="SC", name="Seychelles", flag="🇸🇨", region="af-south-1", pingMin=150, pingMax=280},
    {code="SL", name="Sierra Leone", flag="🇸🇱", region="eu-west-1", pingMin=103, pingMax=188},
    {code="SG", name="Singapore", flag="🇸🇬", region="ap-southeast-1", pingMin=160, pingMax=270},
    {code="SK", name="Slovakia", flag="🇸🇰", region="eu-central-1", pingMin=87, pingMax=157},
    {code="SI", name="Slovenia", flag="🇸🇮", region="eu-central-1", pingMin=87, pingMax=157},
    {code="SB", name="Solomon Islands", flag="🇸🇧", region="ap-southeast-2", pingMin=215, pingMax=335},
    {code="SO", name="Somalia", flag="🇸🇴", region="af-south-1", pingMin=158, pingMax=288},
    {code="ZA", name="South Africa", flag="🇿🇦", region="af-south-1", pingMin=135, pingMax=255},
    {code="SS", name="South Sudan", flag="🇸🇸", region="af-south-1", pingMin=158, pingMax=288},
    {code="ES", name="Spain", flag="🇪🇸", region="eu-west-1", pingMin=78, pingMax=148},
    {code="LK", name="Sri Lanka", flag="🇱🇰", region="ap-south-1", pingMin=148, pingMax=265},
    {code="SD", name="Sudan", flag="🇸🇩", region="af-south-1", pingMin=155, pingMax=285},
    {code="SR", name="Suriname", flag="🇸🇷", region="sa-east-1", pingMin=110, pingMax=210},
    {code="SE", name="Sweden", flag="🇸🇪", region="eu-north-1", pingMin=80, pingMax=150},
    {code="CH", name="Switzerland", flag="🇨🇭", region="eu-central-1", pingMin=83, pingMax=153},
    {code="SY", name="Syria", flag="🇸🇾", region="me-south-1", pingMin=120, pingMax=235},
    {code="TW", name="Taiwan", flag="🇹🇼", region="ap-northeast-1", pingMin=158, pingMax=268},
    {code="TJ", name="Tajikistan", flag="🇹🇯", region="ap-south-1", pingMin=153, pingMax=268},
    {code="TZ", name="Tanzania", flag="🇹🇿", region="af-south-1", pingMin=148, pingMax=275},
    {code="TH", name="Thailand", flag="🇹🇭", region="ap-southeast-1", pingMin=170, pingMax=280},
    {code="TL", name="Timor-Leste", flag="🇹🇱", region="ap-southeast-1", pingMin=178, pingMax=290},
    {code="TG", name="Togo", flag="🇹🇬", region="af-south-1", pingMin=155, pingMax=285},
    {code="TO", name="Tonga", flag="🇹🇴", region="ap-southeast-2", pingMin=215, pingMax=335},
    {code="TT", name="Trinidad and Tobago", flag="🇹🇹", region="us-east-1", pingMin=40, pingMax=100},
    {code="TN", name="Tunisia", flag="🇹🇳", region="eu-central-1", pingMin=95, pingMax=175},
    {code="TR", name="Turkey", flag="🇹🇷", region="eu-east-1", pingMin=95, pingMax=175},
    {code="TM", name="Turkmenistan", flag="🇹🇲", region="ap-south-1", pingMin=153, pingMax=268},
    {code="TV", name="Tuvalu", flag="🇹🇻", region="ap-southeast-2", pingMin=218, pingMax=338},
    {code="UG", name="Uganda", flag="🇺🇬", region="af-south-1", pingMin=150, pingMax=278},
    {code="UA", name="Ukraine", flag="🇺🇦", region="eu-east-1", pingMin=95, pingMax=175},
    {code="AE", name="United Arab Emirates", flag="🇦🇪", region="me-south-1", pingMin=115, pingMax=225},
    {code="GB", name="United Kingdom", flag="🇬🇧", region="eu-west-2", pingMin=75, pingMax=145},
    {code="US", name="United States", flag="🇺🇸", region="us-east-1", pingMin=10, pingMax=60},
    {code="UY", name="Uruguay", flag="🇺🇾", region="sa-east-1", pingMin=118, pingMax=218},
    {code="UZ", name="Uzbekistan", flag="🇺🇿", region="ap-south-1", pingMin=150, pingMax=265},
    {code="VU", name="Vanuatu", flag="🇻🇺", region="ap-southeast-2", pingMin=213, pingMax=333},
    {code="VE", name="Venezuela", flag="🇻🇪", region="sa-east-1", pingMin=110, pingMax=210},
    {code="VN", name="Vietnam", flag="🇻🇳", region="ap-southeast-1", pingMin=172, pingMax=282},
    {code="YE", name="Yemen", flag="🇾🇪", region="me-south-1", pingMin=125, pingMax=240},
    {code="ZM", name="Zambia", flag="🇿🇲", region="af-south-1", pingMin=148, pingMax=275},
    {code="ZW", name="Zimbabwe", flag="🇿🇼", region="af-south-1", pingMin=145, pingMax=272},
}
-- ───────────────────────────────────────────────────────────────

local selectedCountry = nil
local isHopping       = false
local hopThread       = nil
local uiOpen          = true
local searchText      = ""

-- ── BUILD SCREENGUI ────────────────────────────────────────────
local screenGui = Instance.new("ScreenGui")
screenGui.Name              = "ServerHopperUI"
screenGui.ZIndexBehavior    = Enum.ZIndexBehavior.Sibling
screenGui.ResetOnSpawn      = false
screenGui.DisplayOrder      = 999

-- Try to parent to CoreGui (Synapse/KRNL), fallback to PlayerGui
local ok = pcall(function()
    screenGui.Parent = game:GetService("CoreGui")
end)
if not ok then
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

-- ── MAIN FRAME ────────────────────────────────────────────────
local mainFrame = Instance.new("Frame")
mainFrame.Name        
