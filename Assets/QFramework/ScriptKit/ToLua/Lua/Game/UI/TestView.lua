--=============================================================================
-- 2019.4 XAVIER
--=============================================================================
local TestView = class("TestView",LuaBehaviour)

--===== 初始化流程:注意Awake方法不要重写 =====
function TestView:BindUI()
	self.Button1 = self:Find(self.gameObject,"Button1");
	self.Button2 = self:Find(self.gameObject,"Button2");
end

function TestView:RegisterUIEvent()

	QUIHelper.SetButtonClickEvent(self.Button1,function()
		log("click Button1")
	end)

	QUIHelper.SetButtonClickEvent(self.Button2,function()
		log("click Button2")
	end)
end

--===== Behaviour生命周期函数 =====
function TestView:OnEnable()
	log("TestView:OnEnable")

end

function TestView:Start()
	log("TestView:Start")

end

function TestView:Update()

end

function TestView:OnDisable()
	log("TestView:OnDisable")

end

function TestView:OnDestroy()
	log("TestView:OnDestroy")

end
--================================
return TestView.new();