.class public final Lk3/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Landroid/database/Cursor;)Lcom/pantanal/server/content/recommendlist/ServiceInfo;
    .registers 20

    move-object/from16 v1, p0

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ServiceInfoUtil"

    const-string v0, "fromCursor start"

    invoke-static {v2, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    const/4 v3, 0x0

    :try_start_14
    const-string v0, "businessData"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_32

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_32

    :cond_28
    const-string v4, "get businessData success!"

    invoke-static {v2, v4}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "systemInitData"

    invoke-virtual {v14, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    const-string v0, "score"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3b

    goto :goto_43

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    :goto_43
    const-string v0, "timestamp"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4e

    const-wide/16 v4, 0x0

    goto :goto_56

    :cond_4e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_56
    .catchall {:try_start_14 .. :try_end_56} :catchall_89

    :goto_56
    :try_start_56
    const-string v0, "param"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_60

    const/4 v6, 0x0

    goto :goto_69

    :cond_60
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_87

    move-object v6, v0

    :goto_69
    :try_start_69
    const-string v0, "versionCode"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_78

    const-wide/16 v7, 0x0

    move-wide v10, v4

    move-object v9, v6

    move-wide v12, v7

    const/4 v0, 0x0

    goto :goto_96

    :cond_78
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_80
    .catchall {:try_start_69 .. :try_end_80} :catchall_85

    :try_start_80
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_83

    goto :goto_93

    :catchall_83
    move-exception v0

    goto :goto_8f

    :catchall_85
    move-exception v0

    goto :goto_8d

    :catchall_87
    move-exception v0

    goto :goto_8c

    :catchall_89
    move-exception v0

    const-wide/16 v4, 0x0

    :goto_8c
    const/4 v6, 0x0

    :goto_8d
    const-wide/16 v7, 0x0

    :goto_8f
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_93
    move-wide v10, v4

    move-object v9, v6

    move-wide v12, v7

    :goto_96
    move v7, v3

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "fromCursor businessData error,"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    new-instance v8, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    const-string v0, "serviceId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "cursor.getString(cursor.…mnInfo.FIELD_SERVICE_ID))"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "size"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    if-nez v0, :cond_d8

    goto :goto_e8

    :cond_d8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_e1

    const/16 v17, 0x1

    goto :goto_e3

    :cond_e1
    move/from16 v17, v15

    :goto_e3
    if-nez v17, :cond_e8

    const/16 v17, 0x1

    goto :goto_ea

    :cond_e8
    :goto_e8
    move/from16 v17, v15

    :goto_ea
    if-nez v17, :cond_f1

    move-object/from16 v18, v6

    move-object/from16 v17, v14

    goto :goto_14f

    :cond_f1
    const-string v17, ","

    move-object/from16 v18, v6

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v14

    const/4 v14, 0x6

    invoke-static {v0, v6, v15, v15, v14}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_104
    :goto_104
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    :try_start_111
    invoke-static {v14}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_129
    .catchall {:try_start_111 .. :try_end_129} :catchall_12a

    goto :goto_12f

    :catchall_12a
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_12f
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_104

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "toSupportSizeList error, item: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is not Int"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_104

    :cond_14f
    :goto_14f
    const-string v0, "support_entry"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move-object v6, v3

    move-object v3, v8

    move-object/from16 v15, v18

    move-object v14, v8

    move v8, v0

    move-object v15, v14

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;)V

    :try_start_165
    const-string v0, "intentCategory"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_16e

    goto :goto_179

    :cond_16e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setIntentCategory(I)V

    :goto_179
    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getIntentCategory()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_182

    const/4 v0, 0x1

    goto :goto_183

    :cond_182
    const/4 v0, 0x0

    :goto_183
    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setGuaranteedCard(Z)V

    const-string v0, "serviceCategory"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_18f

    goto :goto_19a

    :cond_18f
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setServiceCategory(I)V

    :goto_19a
    const-string v0, "channelType"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1a3

    goto :goto_1ae

    :cond_1a3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setChannelType(I)V

    :goto_1ae
    const-string v0, "forceRebuildSeedling"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1bd

    const/4 v0, 0x1

    goto :goto_1be

    :cond_1bd
    const/4 v0, 0x0

    :goto_1be
    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setForceRebuild(Z)V

    const-string v0, "isParamsSendToSeedling"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setParamsSendToSeedling(I)V

    const-string v0, "cannotReduceRecommend"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1dd

    const/4 v0, 0x1

    goto :goto_1de

    :cond_1dd
    const/4 v0, 0x0

    :goto_1de
    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setCannotReduceRecommend(Z)V

    const-string v0, "seedlingCardOptions"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1ea

    goto :goto_1f5

    :cond_1ea
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSeedlingCardOptions(Ljava/lang/String;)V

    :goto_1f5
    const-string v0, "intent_params"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1fe

    goto :goto_209

    :cond_1fe
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setIntentParams(Ljava/lang/String;)V

    :goto_209
    const-string v0, "instanceId"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_212

    goto :goto_221

    :cond_212
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setInstanceId(Ljava/lang/Long;)V

    :goto_221
    const-string v0, "sgExtraInfo"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_22b

    goto/16 :goto_2d7

    :cond_22b
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_233
    .catchall {:try_start_165 .. :try_end_233} :catchall_312

    :try_start_233
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "focus_timestamp"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setFocusTimestamp(Ljava/lang/Long;)V

    const-string v0, "remindControl"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setCloudRemindSwitch(I)V

    const-string v0, "should_focus"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setShouldFocus(Z)V

    const-string v0, "group_priority"

    const-string v4, "4"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "it.optString(\n          …ITY\n                    )"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setGroupPriority(I)V

    const-string v0, "preload"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setNeedToWaitCardData(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remind,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getCloudRemindSwitch()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",focusTimeStamp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getFocusTimestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",shouldFocus:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getShouldFocus()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",groupPriority:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getGroupPriority()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",needToWaitCardData:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getNeedToWaitCardData()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_2be
    .catchall {:try_start_233 .. :try_end_2be} :catchall_2bf

    goto :goto_2c4

    :catchall_2bf
    move-exception v0

    :try_start_2c0
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2c4
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2d7

    const-string v3, "parse sgExtraInfo error,"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d7
    :goto_2d7
    const-string v0, "serviceInstanceId"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2e0

    goto :goto_2f0

    :cond_2e0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cursor.getString(this)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setServiceInstanceId(Ljava/lang/String;)V

    :goto_2f0
    const-string v0, "isSupportMultiInstance"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2fc

    const/4 v0, 0x1

    move v3, v0

    const/4 v0, 0x0

    goto :goto_318

    :cond_2fc
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_304
    .catchall {:try_start_2c0 .. :try_end_304} :catchall_312

    const/4 v3, 0x1

    if-ne v0, v3, :cond_309

    move v0, v3

    goto :goto_30a

    :cond_309
    const/4 v0, 0x0

    :goto_30a
    :try_start_30a
    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSupportMultiInstance(Z)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_30f
    .catchall {:try_start_30a .. :try_end_30f} :catchall_310

    goto :goto_318

    :catchall_310
    move-exception v0

    goto :goto_314

    :catchall_312
    move-exception v0

    const/4 v3, 0x1

    :goto_314
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_318
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_323

    const-string v4, "fromCursor error"

    invoke-static {v2, v4, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_323
    const-string v0, "fromCursor, intentCategory = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getIntentCategory()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isPocketBottomCard = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",instanceId = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getInstanceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getForceRebuild()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "forceRebuild = "

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "intent_id"

    const-string v5, "intentSrc"

    :try_start_364
    const-string v0, "useTemplate"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_36d

    goto :goto_389

    :cond_36d
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setUseTemplate(I)V

    const-string v0, "useTemplate = "

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUseTemplate()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_389
    const-string v0, "policyName"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_392

    goto :goto_3b1

    :cond_392
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3a3

    goto :goto_3a5

    :cond_3a3
    const/4 v6, 0x0

    goto :goto_3a6

    :cond_3a5
    :goto_3a5
    move v6, v3

    :goto_3a6
    if-eqz v6, :cond_3ae

    const-string v0, ""

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setPolicy(Ljava/lang/String;)V

    goto :goto_3b1

    :cond_3ae
    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setPolicy(Ljava/lang/String;)V

    :goto_3b1
    const-string v0, "utrace_context"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3ba

    goto :goto_3e4

    :cond_3ba
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c7

    const/16 v16, 0x0

    goto :goto_3dd

    :cond_3c7
    sget-object v6, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    invoke-virtual {v6, v0}, Lcom/oplus/utrace/sdk/UTraceCompat;->readFromJsonString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setUtraceContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    const-string v6, "utraceContext from sms is not null!"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    move-object/from16 v16, v0

    :goto_3dd
    if-nez v16, :cond_3e4

    const-string v0, "utraceContext from sms is null"

    invoke-static {v2, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e4
    :goto_3e4
    const-string v0, "subdomain"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3ed

    goto :goto_3f8

    :cond_3ed
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSubdomain(Ljava/lang/String;)V

    :goto_3f8
    const-string v0, "seedlingType"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_401

    goto :goto_40c

    :cond_401
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSeedlingType(I)V

    :goto_40c
    const-string v0, "hostPackage"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_415

    goto :goto_42d

    :cond_415
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setHostPackage(Ljava/lang/String;)V

    const-string v0, "hostPackage = "

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getHostPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42d
    const-string v0, "card_configs"

    invoke-static {v1, v0}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_437

    goto/16 :goto_4fd

    :cond_437
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_443

    goto/16 :goto_4fd

    :cond_443
    const-string v6, "get cardConfig success,"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_456
    .catchall {:try_start_364 .. :try_end_456} :catchall_576

    :try_start_456
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4e2

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4a2

    const/4 v9, 0x0

    :goto_468
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v11, v18

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "type"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "full_card_info"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "jsonInfo.optString(Decis…nfo.FIELD_FULL_CARD_INFO)"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v10, v0, :cond_49e

    goto :goto_4a2

    :cond_49e
    move v9, v10

    move-object/from16 v18, v11

    goto :goto_468

    :cond_4a2
    :goto_4a2
    invoke-virtual {v15, v6}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSizeToCardType(Ljava/util/Map;)V

    invoke-virtual {v15, v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSizeToCardConfig(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sizeToCardType info :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSizeToCardType()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSizeToCardType()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSizeToCardType()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e2
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_4e4
    .catchall {:try_start_456 .. :try_end_4e4} :catchall_4e5

    goto :goto_4ea

    :catchall_4e5
    move-exception v0

    :try_start_4e6
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_4ea
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4fd

    const-string v6, "parse cardConfig error,"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4fd
    :goto_4fd
    invoke-static {v1, v5}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_504

    goto :goto_54f

    :cond_504
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_516

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_515

    goto :goto_516

    :cond_515
    const/4 v3, 0x0

    :cond_516
    :goto_516
    if-nez v3, :cond_546

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "{"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v6, v5}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_546

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53c

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setIntentId(Ljava/lang/Long;)V

    goto :goto_54f

    :cond_53c
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setIntentId(Ljava/lang/Long;)V

    goto :goto_54f

    :cond_546
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setIntentId(Ljava/lang/Long;)V

    :goto_54f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "policy = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",intentId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getIntentId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_575
    .catchall {:try_start_4e6 .. :try_end_575} :catchall_576

    goto :goto_57b

    :catchall_576
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_57b
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_586

    const-string v3, "fromCursor useTemplate or hostPackage error"

    invoke-static {v2, v3, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_586
    invoke-static {v15, v1}, Lk3/k;->c(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Landroid/database/Cursor;)V

    const-string v0, "fromCursor end"

    invoke-static {v2, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method

.method public static final b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public static final c(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Landroid/database/Cursor;)V
    .registers 8

    const-string v0, "ServiceInfoUtil"

    :try_start_2
    const-string v1, "sceneId"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_16

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneId(J)V

    :goto_16
    const-string v1, "sceneCardSleeveType"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_2a

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setCardSleeveType(I)V

    :goto_2a
    const-string v1, "sceneCreateTime"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_33

    goto :goto_3e

    :cond_33
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneCreateTime(J)V

    :goto_3e
    const-string v1, "sceneUpdateTime"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_47

    goto :goto_52

    :cond_47
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneUpdateTime(J)V

    :goto_52
    const-string v1, "sceneWeight"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_5b

    goto :goto_66

    :cond_5b
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneWeight(I)V

    :goto_66
    const-string v1, "sceneStatus"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6f

    goto :goto_7a

    :cond_6f
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneStatus(I)V

    :goto_7a
    const-string v1, "sceneScore"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_83

    goto :goto_8e

    :cond_83
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneScore(F)V

    :goto_8e
    const-string v1, "sceneShouldFocus"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_99

    goto :goto_a9

    :cond_99
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_a5

    move v1, v3

    goto :goto_a6

    :cond_a5
    move v1, v2

    :goto_a6
    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneShouldFocus(Z)V

    :goto_a9
    const-string v1, "serviceLevel"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b2

    goto :goto_bd

    :cond_b2
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setServiceLevel(Ljava/lang/String;)V

    :goto_bd
    const-string v1, "serviceStatus"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_c6

    goto :goto_d1

    :cond_c6
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setServiceStatus(I)V

    :goto_d1
    const-string v1, "isSceneFocus"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_da

    goto :goto_ea

    :cond_da
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_e6

    move v1, v3

    goto :goto_e7

    :cond_e6
    move v1, v2

    :goto_e7
    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneFocus(Z)V

    :goto_ea
    const-string v1, "focusTime"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f3

    goto :goto_fe

    :cond_f3
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setFocusTime(J)V

    :goto_fe
    const-string v1, "expectSceneCnt"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_107

    goto :goto_112

    :cond_107
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setExpectSceneCnt(I)V

    :goto_112
    const-string v1, "combinationStrategy"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_11b

    goto :goto_126

    :cond_11b
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setCombinationStrategy(I)V

    :goto_126
    const-string v1, "homeFlag"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_12f

    goto :goto_13f

    :cond_12f
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_13b

    move v1, v3

    goto :goto_13c

    :cond_13b
    move v1, v2

    :goto_13c
    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setHomeFlag(Z)V

    :goto_13f
    const-string v1, "sceneLevel"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_148

    goto :goto_153

    :cond_148
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSceneLevel(I)V

    :goto_153
    const-string v1, "intentPosition"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_15c

    goto :goto_167

    :cond_15c
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setIntentPosition(I)V

    :goto_167
    const-string v1, "forceGuaranteed"

    invoke-static {p1, v1}, Lk3/k;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_170

    goto :goto_17e

    :cond_170
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v3, :cond_17b

    move v2, v3

    :cond_17b
    invoke-virtual {p0, v2}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setForceGuaranteed(Z)V

    :goto_17e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSceneFieldValue cursor info:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportEntrance()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1ae
    .catchall {:try_start_2 .. :try_end_1ae} :catchall_1af

    goto :goto_1b4

    :catchall_1af
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1b4
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1c7

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setSceneFieldValue from cursor error:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c7
    return-void
.end method
