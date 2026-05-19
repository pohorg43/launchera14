.class public final Lcom/oplus/card/pantanal/application/ConverterKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final toCardCategory(Lcom/android/launcher3/card/LauncherCardInfo;)Lpantanal/app/bean/CardCategory;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/16 v0, 0x64

    if-eq p0, v0, :cond_14

    sget-object p0, Lpantanal/app/bean/CardCategory;->UNKNOWN:Lpantanal/app/bean/CardCategory;

    goto :goto_1c

    :cond_14
    sget-object p0, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    goto :goto_1c

    :cond_17
    sget-object p0, Lpantanal/app/bean/CardCategory;->APP:Lpantanal/app/bean/CardCategory;

    goto :goto_1c

    :cond_1a
    sget-object p0, Lpantanal/app/bean/CardCategory;->INSTANT:Lpantanal/app/bean/CardCategory;

    :goto_1c
    return-object p0
.end method

.method public static final toCardCategory(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lpantanal/app/bean/CardCategory;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/16 v0, 0x64

    if-eq p0, v0, :cond_16

    sget-object p0, Lpantanal/app/bean/CardCategory;->UNKNOWN:Lpantanal/app/bean/CardCategory;

    goto :goto_1e

    :cond_16
    sget-object p0, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    goto :goto_1e

    :cond_19
    sget-object p0, Lpantanal/app/bean/CardCategory;->APP:Lpantanal/app/bean/CardCategory;

    goto :goto_1e

    :cond_1c
    sget-object p0, Lpantanal/app/bean/CardCategory;->INSTANT:Lpantanal/app/bean/CardCategory;

    :goto_1e
    return-object p0
.end method

.method public static final toCardViewInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;)Lpantanal/app/bean/CardViewInfo;
    .registers 40

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v3, v4}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getInstantCardUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    :cond_1d
    move-object v3, v4

    :goto_1e
    if-eqz v0, :cond_b2

    new-instance v5, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v5, v0}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/seed/SelectedServiceInfo;)V

    :try_start_25
    invoke-virtual {v5}, Lcom/android/launcher3/card/seed/SeedParams;->getInitData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5}, Lcom/android/launcher3/card/seed/SeedParams;->getInitData()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v5, "data"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_8c

    const-string v5, "initDataJson[\"data\"]"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_9f

    const/4 v5, 0x1

    const-string v6, "?"

    const/4 v7, 0x0

    if-eqz v3, :cond_57

    const/4 v8, 0x2

    :try_start_50
    invoke-static {v3, v6, v7, v8}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v8

    if-ne v8, v5, :cond_57

    goto :goto_58

    :cond_57
    move v5, v7

    :goto_58
    if-eqz v5, :cond_5c

    const-string v6, "&"

    :cond_5c
    if-eqz v3, :cond_8b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "from=launcher&contextParam="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8b
    move-object v3, v4

    :cond_8c
    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    iget v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v2}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-nez v0, :cond_99

    goto :goto_9c

    :cond_99
    invoke-virtual {v0, v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setInstantCardUrlContextParam(Ljava/lang/String;)V

    :cond_9c
    :goto_9c
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_9e
    .catchall {:try_start_50 .. :try_end_9e} :catchall_9f

    goto :goto_a4

    :catchall_9f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_a4
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_ab

    goto :goto_b2

    :cond_ab
    const-string v2, "seedParams append error. "

    const-string v4, "LauncherCardInfo"

    invoke-static {v2, v0, v4}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v2, v4}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->changeCardSizeToString(II)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, v1, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    if-eqz v4, :cond_df

    iget v4, v1, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    const-string v5, "card_width"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v4, v1, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    const-string v5, "card_height"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "card_size"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "card_id"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_df
    sget-object v5, Lpantanal/app/bean/Entrance;->LAUNCHER:Lpantanal/app/bean/Entrance;

    iget v6, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v7, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v8, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    sget-object v2, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    iget v4, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v2, v4}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v2

    if-eqz v2, :cond_fb

    invoke-static {v2}, Lcom/oplus/card/pantanal/application/ConverterKt;->toCardCategory(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lpantanal/app/bean/CardCategory;

    move-result-object v2

    if-nez v2, :cond_ff

    :cond_fb
    invoke-static/range {p0 .. p0}, Lcom/oplus/card/pantanal/application/ConverterKt;->toCardCategory(Lcom/android/launcher3/card/LauncherCardInfo;)Lpantanal/app/bean/CardCategory;

    move-result-object v2

    :cond_ff
    move-object v9, v2

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v2, v4}, Lcom/android/launcher3/card/LauncherCardUtil;->getSizeBySpan(II)I

    move-result v10

    iget-object v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const-string v4, ""

    if-nez v2, :cond_111

    move-object/from16 v16, v4

    goto :goto_113

    :cond_111
    move-object/from16 v16, v2

    :goto_113
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/card/LauncherCardInfo;->isLauncherUSContainer()Z

    move-result v17

    iget-boolean v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    if-nez v3, :cond_11d

    move-object v13, v4

    goto :goto_11e

    :cond_11d
    move-object v13, v3

    :goto_11e
    new-instance v2, Lpantanal/app/bean/CardViewInfo;

    move-object v4, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const v36, 0x2fffc6c0

    const/16 v37, 0x0

    move/from16 v18, v1

    move-object/from16 v34, v0

    invoke-direct/range {v4 .. v37}, Lpantanal/app/bean/CardViewInfo;-><init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public static synthetic toCardViewInfo$default(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;ILjava/lang/Object;)Lpantanal/app/bean/CardViewInfo;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/oplus/card/pantanal/application/ConverterKt;->toCardViewInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;)Lpantanal/app/bean/CardViewInfo;

    move-result-object p0

    return-object p0
.end method
