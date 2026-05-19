.class public final Lpantanal/app/seedling/SeedlingExKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final convert(Lpantanal/app/seedling/SeedingEngineType;)Lcom/oplus/seedling/sdk/entity/EngineType;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/app/seedling/SeedingEngineType;->Standard:Lpantanal/app/seedling/SeedingEngineType;

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/oplus/seedling/sdk/entity/EngineType;->STANDARD:Lcom/oplus/seedling/sdk/entity/EngineType;

    goto :goto_e

    :cond_c
    sget-object p0, Lcom/oplus/seedling/sdk/entity/EngineType;->LITE:Lcom/oplus/seedling/sdk/entity/EngineType;

    :goto_e
    return-object p0
.end method

.method public static final toResultData(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)Lpantanal/app/bean/ResultData;
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpantanal/app/bean/ResultData;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getDes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone()Z

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getImportance()I

    move-result v6

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getShouldShow()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3c0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lpantanal/app/bean/ResultData;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
