.class public final Lpantanal/app/seedling/SeedlingCardClientKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final buildSeedlingInitConfig(Lpantanal/app/bean/Configuration;)Lcom/oplus/seedling/sdk/SeedlingInitConfig;
    .registers 3

    const-string v0, "configuration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getSeedingConfiguration()Lpantanal/app/seedling/SeedlingConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lpantanal/app/seedling/SeedlingConfiguration;->getEngineType()Lpantanal/app/seedling/SeedingEngineType;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingExKt;->convert(Lpantanal/app/seedling/SeedingEngineType;)Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v1

    if-nez v1, :cond_1e

    :cond_1c
    sget-object v1, Lcom/oplus/seedling/sdk/entity/EngineType;->STANDARD:Lcom/oplus/seedling/sdk/entity/EngineType;

    :cond_1e
    invoke-virtual {v0, v1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->engineType(Lcom/oplus/seedling/sdk/entity/EngineType;)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getSupportInterruptLoadingSeedlingCard()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->supportInteruptCreatingSeedlingCard(Z)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->isContextLoadedByAppDefaultClassLoader()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->isContextLoadedByAppDefaultClassLoader(Z)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->hostClassLoader(Ljava/lang/ClassLoader;)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getDeltaOfLCAParentClassLoader()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->deltaOfLCAParentClassLoader(I)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->initViaPantacardSdk(Z)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->build()Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    move-result-object p0

    return-object p0
.end method
