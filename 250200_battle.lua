RegisterTableGoal(GOAL_RuneKnightsTitan250200_Battle, "RuneKnightsTitan250200_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneKnightsTitan250200_Battle, true)

Goal.Initialize = function (_, _, _, _)
end

Goal.Activate = function (_, actor, goals)
    Init_Pseudo_Global(actor, goals)
    actor:SetStringIndexedNumber("Dist_SideStep", 5)
    actor:SetStringIndexedNumber("Dist_BackStep", 5)
    local probabilities = {}
    local acts = {}
    local f69_local0 = {}
    Common_Clear_Param(probabilities, acts, f69_local0)
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    actor:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    actor:GetEventRequest()
    actor:GetHpRate(TARGET_SELF)
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    actor:SetNumber(2, 0)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5040)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5041)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5042)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 15451)
	actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 9015451)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 15450)
    if actor:GetHpRate(TARGET_SELF) <= 0.01 then
        actor:SetNumber(2, actor:GetNumber(2) + 1)
    end
    if actor:GetNumber(2) >= 1 then
        actor:SetNumber(3, actor:GetNumber(2) + 1)
    end
    --if actor:GetNumber(3) >= 1 then
    if actor:HasSpecialEffectId(TARGET_SELF, 9015451) then
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 230) then
            if distance <= 3 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    probabilities[20] = 100
                    probabilities[10] = 100
                    probabilities[4] = 100
                    if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                        probabilities[30] = 100
                    end
                    probabilities[31] = 1000
                else
                    probabilities[20] = 100
                    probabilities[11] = 100
                    probabilities[5] = 100
                    if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                        probabilities[30] = 100
                    end
                    probabilities[31] = 1000
                end
            else
                probabilities[20] = 100
                probabilities[21] = 100
                probabilities[24] = 100
                if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                    probabilities[30] = 100
                end
                probabilities[31] = 1000
            end
        elseif distance >= 8 then
            probabilities[1] = 400
            probabilities[2] = 200
            probabilities[7] = 100
            probabilities[25] = 100
            if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                probabilities[29] = 1000
            end
            if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                probabilities[30] = 100
            end
            probabilities[31] = 1000
            probabilities[36] = 50
            probabilities[38] = 100
            probabilities[39] = 100
        elseif distance >= 4.5 then
            probabilities[1] = 30
            probabilities[6] = 30
            probabilities[8] = 30
            probabilities[9] = 30
            probabilities[12] = 30
            probabilities[13] = 30
            probabilities[14] = 30
            probabilities[15] = 30
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[23] = 30
            probabilities[7] = 30
            probabilities[24] = 100
            probabilities[25] = 100
            probabilities[27] = 50
            if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                probabilities[29] = 1000
            end
            if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                probabilities[30] = 100
            end
            probabilities[31] = 1000
            probabilities[36] = 50
            probabilities[37] = 100
            probabilities[38] = 100
            probabilities[39] = 100
        elseif distance > 2.5 then
            probabilities[1] = 30
            probabilities[6] = 30
            probabilities[8] = 30
            probabilities[9] = 30
            probabilities[12] = 30
            probabilities[13] = 30
            probabilities[14] = 30
            probabilities[15] = 30
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[23] = 30
            probabilities[7] = 30
            probabilities[24] = 100
            probabilities[26] = 100
            probabilities[27] = 50
            probabilities[28] = 100
            if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                probabilities[29] = 1000
            end
            if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                probabilities[30] = 100
            end
            probabilities[31] = 1000
            probabilities[36] = 50
            probabilities[37] = 100
        else
            probabilities[1] = 30
            probabilities[3] = 30
            probabilities[6] = 30
            probabilities[8] = 30
            probabilities[9] = 30
            probabilities[12] = 30
            probabilities[13] = 30
            probabilities[14] = 30
            probabilities[15] = 30
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[23] = 30
            probabilities[7] = 30
            probabilities[26] = 30
            probabilities[27] = 50
            if actor:GetHpRate(TARGET_SELF) <= 0.6 then
                probabilities[30] = 100
            end
            probabilities[31] = 1000
            probabilities[36] = 50
            probabilities[37] = 100
        end
    else
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 230) then
            if distance <= 3 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    probabilities[20] = 100
                    probabilities[10] = 100
                    probabilities[4] = 100
                else
                    probabilities[20] = 100
                    probabilities[11] = 100
                    probabilities[5] = 100
                end
            else
                probabilities[20] = 100
                probabilities[21] = 100
                probabilities[24] = 100
            end
        elseif distance >= 8 then
            probabilities[1] = 400
            probabilities[2] = 200
            probabilities[7] = 100
            probabilities[25] = 100
        elseif distance >= 4.5 then
            probabilities[1] = 30
            probabilities[6] = 30
            probabilities[8] = 30
            probabilities[9] = 30
            probabilities[12] = 30
            probabilities[13] = 30
            probabilities[14] = 30
            probabilities[15] = 30
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[23] = 30
            probabilities[7] = 30
            probabilities[24] = 100
            probabilities[25] = 100
            probabilities[27] = 50
        elseif distance > 2.5 then
            probabilities[1] = 30
            probabilities[6] = 30
            probabilities[8] = 30
            probabilities[9] = 30
            probabilities[12] = 30
            probabilities[13] = 30
            probabilities[14] = 30
            probabilities[15] = 30
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[23] = 30
            probabilities[7] = 30
            probabilities[24] = 100
            probabilities[26] = 100
            probabilities[27] = 50
        else
            probabilities[1] = 30
            probabilities[3] = 30
            probabilities[6] = 30
            probabilities[8] = 30
            probabilities[9] = 30
            probabilities[12] = 30
            probabilities[13] = 30
            probabilities[14] = 30
            probabilities[15] = 30
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[23] = 30
            probabilities[7] = 30
            probabilities[26] = 30
            probabilities[27] = 50
        end
    end
    probabilities[37] = 0
    probabilities[1] = SetCoolTime(actor, goals, 3003, 12, probabilities[1], 1)
    probabilities[2] = SetCoolTime(actor, goals, 3011, 12, probabilities[2], 1)
    probabilities[3] = SetCoolTime(actor, goals, 3033, 15, probabilities[3], 1)
    probabilities[4] = SetCoolTime(actor, goals, 3017, 12, probabilities[4], 1)
    probabilities[5] = SetCoolTime(actor, goals, 3023, 12, probabilities[5], 1)
    probabilities[6] = SetCoolTime(actor, goals, 3000, 12, probabilities[6], 1)
    probabilities[7] = SetCoolTime(actor, goals, 3031, 20, probabilities[7], 0)
    probabilities[8] = SetCoolTime(actor, goals, 3004, 8, probabilities[8], 1)
    probabilities[9] = SetCoolTime(actor, goals, 3008, 8, probabilities[9], 1)
    probabilities[10] = SetCoolTime(actor, goals, 3012, 8, probabilities[10], 1)
    probabilities[11] = SetCoolTime(actor, goals, 3014, 10, probabilities[11], 1)
    probabilities[12] = SetCoolTime(actor, goals, 3021, 40, probabilities[12], 1)
    probabilities[12] = SetCoolTime(actor, goals, 3022, 40, probabilities[12], 1)
    probabilities[12] = SetCoolTime(actor, goals, 3018, 40, probabilities[12], 1)
    probabilities[12] = SetCoolTime(actor, goals, 3019, 40, probabilities[12], 1)
    probabilities[13] = SetCoolTime(actor, goals, 3024, 10, probabilities[13], 1)
    probabilities[14] = SetCoolTime(actor, goals, 3026, 10, probabilities[14], 1)
    probabilities[15] = SetCoolTime(actor, goals, 3021, 40, probabilities[15], 1)
    probabilities[15] = SetCoolTime(actor, goals, 3022, 40, probabilities[15], 1)
    probabilities[15] = SetCoolTime(actor, goals, 3018, 40, probabilities[15], 1)
    probabilities[15] = SetCoolTime(actor, goals, 3019, 40, probabilities[15], 1)
    probabilities[17] = SetCoolTime(actor, goals, 3021, 40, probabilities[17], 1)
    probabilities[17] = SetCoolTime(actor, goals, 3022, 40, probabilities[17], 1)
    probabilities[17] = SetCoolTime(actor, goals, 3018, 40, probabilities[17], 1)
    probabilities[17] = SetCoolTime(actor, goals, 3019, 40, probabilities[17], 1)
    probabilities[23] = SetCoolTime(actor, goals, 3000, 10, probabilities[23], 1)
    probabilities[24] = SetCoolTime(actor, goals, 3034, 12, probabilities[24], 1)
    probabilities[25] = SetCoolTime(actor, goals, 3036, 12, probabilities[25], 1)
    probabilities[26] = SetCoolTime(actor, goals, 3035, 12, probabilities[26], 1)
    probabilities[27] = SetCoolTime(actor, goals, 20009, 12, probabilities[27], 1)
    probabilities[28] = SetCoolTime(actor, goals, 20011, 12, probabilities[28], 1)
    probabilities[29] = SetCoolTime(actor, goals, 20012, 100, probabilities[29], 0)
    probabilities[30] = SetCoolTime(actor, goals, 20017, 40, probabilities[30], 0)
    probabilities[31] = SetCoolTime(actor, goals, 20021, 100, probabilities[31], 0)
    probabilities[35] = SetCoolTime(actor, goals, 20016, 100, probabilities[35], 0)
    probabilities[36] = SetCoolTime(actor, goals, 20034, 15, probabilities[36], 1)
    probabilities[37] = SetCoolTime(actor, goals, 20030, 30, probabilities[37], 1)
    probabilities[38] = SetCoolTime(actor, goals, 20035, 20, probabilities[38], 1)
    probabilities[39] = SetCoolTime(actor, goals, 20033, 20, probabilities[39], 1)
    acts[1] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act01)
    acts[2] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act02)
    acts[3] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act03)
    acts[4] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act04)
    acts[5] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act05)
    acts[6] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act06)
    acts[7] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act07)
    acts[8] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act08)
    acts[9] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act09)
    acts[10] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act10)
    acts[11] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act11)
    acts[12] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act12)
    acts[13] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act13)
    acts[14] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act14)
    acts[15] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act15)
    acts[16] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act16)
    acts[17] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act17)
    acts[18] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act18)
    acts[23] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act23)
    acts[19] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act19)
    acts[20] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act20)
    acts[21] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act21)
    acts[22] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act22)
    acts[23] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act23)
    acts[24] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act24)
    acts[25] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act25)
    acts[26] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act26)
    acts[27] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act27)
    acts[28] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act28)
    acts[29] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act29)
    acts[30] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act30)
    acts[31] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act31)
    acts[32] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act32)
    acts[33] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act33)
    acts[34] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act34)
    acts[35] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act35)
    acts[36] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act36)
    acts[37] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act37)
    acts[38] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act38)
    acts[39] = REGIST_FUNC(actor, goals, GOAL_Cambria_Act39)
    Common_Battle_Activate(actor, goals, probabilities, acts, REGIST_FUNC(actor, goals, RuneKnightsTitan250200_ActAfter_AdjustSpace), f69_local0)
end

function GOAL_Cambria_Act01(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f70_local0 = 3.44
    local f70_local1 = 3.44 + 6
    local f70_local2 = 3.44 + 12
    local f70_local3 = 40
    local f70_local4 = 0
    local f70_local5 = 4
    local f70_local6 = 6
    actor:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(actor, goals, f70_local0, f70_local1, f70_local2, f70_local3, f70_local4, f70_local5, f70_local6)
    local action = 3003
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act02(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f71_local0 = 4.59
    local f71_local1 = 4.59 + 6
    local f71_local2 = 4.59 + 12
    local f71_local3 = 40
    local f71_local4 = 0
    local f71_local5 = 3
    local f71_local6 = 6
    actor:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(actor, goals, f71_local0, f71_local1, f71_local2, f71_local3, f71_local4, f71_local5, f71_local6)
    local action = 3011
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act03(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 3033
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act04(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 3017
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act05(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 3023
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act06(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f3_local0 = 4.88
    local f3_local1 = 4.88 + 6
    local f3_local2 = 4.88 + 12
    local f3_local3 = 40
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 6
    Approach_Act_Flex(actor, goals, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local action = 3000
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act07(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f76_local0 = 5.77
    local f76_local1 = 5.77 + 6
    local f76_local2 = 5.77 + 12
    local f76_local3 = 40
    local f76_local4 = 0
    local f76_local5 = 4
    local f76_local6 = 6
    actor:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(actor, goals, f76_local0, f76_local1, f76_local2, f76_local3, f76_local4, f76_local5, f76_local6)
    local action = 3031
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act08(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f4_local0 = 3.2
    local f4_local1 = 3.2 + 6
    local f4_local2 = 3.2 + 12
    local f4_local3 = 40
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 6
    actor:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(actor, goals, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local action = 3004
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act09(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f5_local0 = 7.75
    local f5_local1 = 7.75 + 6
    local f5_local2 = 7.75 + 12
    local f5_local3 = 40
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 6
    actor:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(actor, goals, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local action = 3008
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act10(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 3012
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act11(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 3014
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act12(actor, goals, _)
    local action = 3021
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act13(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f9_local0 = 5.81
    local f9_local1 = 5.81 + 6
    local f9_local2 = 5.81 + 12
    local f9_local3 = 40
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 6
    actor:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(actor, goals, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local action = 3025
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act14(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f10_local0 = 4.17
    local f10_local1 = 4.17 + 6
    local f10_local2 = 4.17 + 12
    local f10_local3 = 40
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 6
    actor:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(actor, goals, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local action = 3026
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act15(actor, goals, _)
    local action = 3022
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act16(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act17(actor, goals, _)
    local action = 3022
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act18(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 3000
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end
 
function GOAL_Cambria_Act19(actor, goals, _)
    local action = 3002
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act20(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act21(arg0, goals, _)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goals:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act22(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act23(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f3_local0 = 4.88
    local f3_local1 = 4.88 + 6
    local f3_local2 = 4.88 + 12
    local f3_local3 = 40
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 6
    Approach_Act_Flex(actor, goals, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local action = 3000
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act24(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local f5_local0 = 10
    local f5_local1 = 10 + 6
    local f5_local2 = 10 + 12
    local f5_local3 = 40
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 6
    actor:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(actor, goals, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local action = 3034
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act25(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 3036
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act26(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 3035
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act27(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20009
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act28(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20011
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act29(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local action = 20012
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act30(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20017
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act31(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20021
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act32(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20022
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act33(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20024
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act34(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20025
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GOAL_Cambria_Act35(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20016
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- stomp
function GOAL_Cambria_Act36(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20034
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- cambria's vortex
function GOAL_Cambria_Act37(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20030
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- cambria's spear throw
function GOAL_Cambria_Act38(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20035
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- spin ranged
function GOAL_Cambria_Act39(actor, goals, _)
    actor:SetStringIndexedNumber("AddDistRun", 0.2)
    local action = 20033
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (_, _, _)
end


Goal.Interrupt = function (_, actor, goals)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5040)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5041)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5042)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5043)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5044)
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:SetNumber(5, 0)
    actor:SetNumber(6, 0)
    if actor:HasSpecialEffectAttribute(TARGET_SELF, 5041) then
        actor:SetNumber(5, actor:GetNumber(5) + 1)
    end
    if actor:HasSpecialEffectAttribute(TARGET_SELF, 5042) then
        actor:SetNumber(6, actor:GetNumber(6) + 1)
    end
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    local random4 = actor:GetRandam_Int(2, 3)
    local random3 = actor:GetRandam_Int(0, 1)
    local random2 = actor:GetRandam_Int(1, 4)
    local random = actor:GetRandam_Int(1, 100)
    actor:GetHpRate(TARGET_SELF)
    if actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5025) and distance <= 6 and actor:GetNumber(0) <= random2 then
        actor:SetNumber(0, actor:GetNumber(0) + 1)
        if random <= 50 then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5026) and distance <= 8 and actor:GetNumber(0) <= random2 then
        actor:SetNumber(0, actor:GetNumber(0) + 1)
        --if actor:GetNumber(3) >= 1  then
        if actor:HasSpecialEffectId(TARGET_SELF, 9015451) then
            if distance <= 3 then
                if random <= 20 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 40 then
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                else
                    return true
                end
            else
                if random <= 50 then
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                else
                    return true
                end
            end
        else
            if distance <= 5 then
                if random <= 50 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 80 then
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                end
            else
                if random <= 80 then
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                end
            end
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5027) and distance <= 10 and actor:GetNumber(0) <= random2 then
        actor:SetNumber(0, actor:GetNumber(0) + 1)
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 10) then
            --if actor:GetNumber(3) >= 1  then
            if actor:HasSpecialEffectId(TARGET_SELF, 9015451) then
                if distance <= 2 then
                    if random <= 20 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 40 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 60 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 80 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                elseif distance <= 4 then
                    if random <= 20 then
                        actor:SetNumber(0, actor:GetNumber(0) + 2)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 40 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 60 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 80 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 100 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                elseif distance <= 7 then
                    if random <= 30 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20007, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 70 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20008, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    else
                        return true
                    end
                elseif distance <= 10 then
                    if random <= 30 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 60 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20007, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    else
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20008, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                end
            else
                if distance <= 3 then
                    if random <= 20 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 40 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 60 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 80 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                elseif distance <= 5 then
                    if random <= 20 then
                        actor:SetNumber(0, actor:GetNumber(0) + 2)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 40 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 60 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 80 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 100 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                else
                    if random <= 50 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                end
            end
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5028) and distance <= 10 and actor:GetNumber(0) <= random2 then
        actor:SetNumber(0, actor:GetNumber(0) + 1)
        --if actor:GetNumber(3) >= 1  then
        if actor:HasSpecialEffectId(TARGET_SELF, 9015451) then
            if distance <= 4 then
                if actor:GetSpecialEffectActivateInterruptId(5040) then
                    if random <= 15 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 30 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    else
                        return true
                    end
                else
                    if random <= 40 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 70 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    else
                        return true
                    end
                end
            end
        else
            if distance <= 5 then
                if actor:GetSpecialEffectActivateInterruptId(5040) then
                    if random <= 20 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 40 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                else
                    if random <= 50 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 80 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                end
            end
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5029) and distance <= 10 and actor:GetNumber(0) <= random2 then
        actor:SetNumber(0, actor:GetNumber(0) + 1)
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
            if actor:GetNumber(0) >= random2 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                end
            end
            return true
        elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 10) then
            if distance <= 2 then
                if random <= 20 then
                    actor:SetNumber(0, actor:GetNumber(0) + 2)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 40 then
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 60 then
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 80 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                else
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                end
            elseif distance <= 4 then
                if random <= 20 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 40 then
                    actor:SetNumber(0, actor:GetNumber(0) + 2)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 60 then
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 80 then
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                elseif random <= 100 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                end
            elseif distance <= 6 then
                if random <= 50 then 
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                else
                    actor:SetNumber(0, actor:GetNumber(0) + 1)
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                    if actor:GetNumber(0) >= random2 then
                        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                        else
                            goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                        end
                    end
                    return true
                end
            else
                --if actor:GetNumber(3) >= 1  then
                if actor:HasSpecialEffectId(TARGET_SELF, 9015451) then
                    if random <= 15 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 30 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 40 then
                        actor:SetNumber(0, actor:GetNumber(0) + 1)
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 50 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 75 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20007, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    elseif random <= 100 then
                        goals:ClearSubGoal()
                        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20008, TARGET_ENE_0, 999, 0, 0)
                        if actor:GetNumber(0) >= random2 then
                            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                            else
                                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                            end
                        end
                        return true
                    end
                else
                    if distance <= 5 then
                        if random <= 50 then
                            goals:ClearSubGoal()
                            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                            if actor:GetNumber(0) >= random2 then
                                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                                else
                                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                                end
                            end
                            return true
                        elseif random <= 80 then
                            goals:ClearSubGoal()
                            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                            if actor:GetNumber(0) >= random2 then
                                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                                else
                                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                                end
                            end
                            return true
                        else
                            actor:SetNumber(0, actor:GetNumber(0) + 1)
                            goals:ClearSubGoal()
                            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                            if actor:GetNumber(0) >= random2 then
                                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                                else
                                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                                end
                            end
                            return true
                        end
                    end
                end
            end
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5032) and distance <= 8 and actor:GetNumber(0) <= random2 then
        actor:SetNumber(0, actor:GetNumber(0) + 1)
        if random <= 50 then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20005, TARGET_ENE_0, 999, 0, 0)
            if actor:GetNumber(0) >= random2 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                end
            end
            return true
        else
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20006, TARGET_ENE_0, 999, 0, 0)
            if actor:GetNumber(0) >= random2 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                end
            end
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5033) then
        goals:ClearSubGoal()
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20010, TARGET_ENE_0, 999, 0, 0)
        if actor:GetNumber(0) >= random2 then
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
            else
                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
            end
        end
        return true
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5034) then
        if actor:GetHpRate(TARGET_SELF) <= 0.3 then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20016, TARGET_ENE_0, 999, 0, 0)
            if actor:GetNumber(0) >= random2 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                end
            end
            return true
        else
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20017, TARGET_ENE_0, 999, 0, 0)
            if actor:GetNumber(0) >= random2 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                end
            end
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5041) then
        if random3 <= 0 then
            actor:SetNumber(1, actor:GetNumber(1) + 1)
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20023, TARGET_ENE_0, 999, 0, 0)
            if actor:GetNumber(0) >= random2 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                end
            end
            return true
        else 
            actor:SetNumber(1, actor:GetNumber(1) + 1)
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20024, TARGET_ENE_0, 999, 0, 0)
            if actor:GetNumber(0) >= random2 then
                if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
                end
            end
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5043) then
        goals:ClearSubGoal()
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20027, TARGET_ENE_0, 999, 0, 0)
        if actor:GetNumber(0) >= random2 then
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
            else
                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
            end
        end
        return true
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5044) then
        goals:ClearSubGoal()
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20028, TARGET_ENE_0, 999, 0, 0)
        if actor:GetNumber(0) >= random2 then
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 60, true, true, 0)
            else
                goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 60, true, true, 0)
            end
        end
        return true
    end
end


RegisterTableGoal(GOAL_RuneKnightsTitan250200_AfterAttackAct, "GOAL_RuneKnightsTitan250200_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneKnightsTitan250200_AfterAttackAct, true)

Goal.Activate = function (_, _, _)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

