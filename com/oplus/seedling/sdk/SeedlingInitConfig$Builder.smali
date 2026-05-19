.class public final Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/SeedlingInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private deltaOfLCAParentClassLoader:I

.field private engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

.field private entranceAuthorityName:Ljava/lang/String;

.field private hostClassLoader:Ljava/lang/ClassLoader;

.field private initViaPantacardSdk:Z

.field private isContextLoadedByAppDefaultClassLoader:Z

.field private shouldNotifyCardServiceToInit:Z

.field private supportInteruptCreatingSeedlingCard:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/seedling/sdk/entity/EngineType;->STANDARD:Lcom/oplus/seedling/sdk/entity/EngineType;

    iput-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->entranceAuthorityName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->isContextLoadedByAppDefaultClassLoader:Z

    iput v0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->deltaOfLCAParentClassLoader:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/oplus/seedling/sdk/SeedlingInitConfig;
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    invoke-direct {v0, p0}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;-><init>(Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;)V

    return-object v0
.end method

.method public final deltaOfLCAParentClassLoader(I)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->deltaOfLCAParentClassLoader:I

    return-object p0
.end method

.method public final engineType(Lcom/oplus/seedling/sdk/entity/EngineType;)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 3

    const-string v0, "engineType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    return-object p0
.end method

.method public final entranceAuthorityName(Ljava/lang/String;)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 3

    const-string v0, "entranceAuthorityName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->entranceAuthorityName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeltaOfLCAParentClassLoader$pantanal_client_release()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->deltaOfLCAParentClassLoader:I

    return p0
.end method

.method public final getEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    return-object p0
.end method

.method public final getEntranceAuthorityName$pantanal_client_release()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->entranceAuthorityName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHostClassLoader$pantanal_client_release()Ljava/lang/ClassLoader;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->hostClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public final getInitViaPantacardSdk$pantanal_client_release()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->initViaPantacardSdk:Z

    return p0
.end method

.method public final getShouldNotifyCardServiceToInit$pantanal_client_release()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->shouldNotifyCardServiceToInit:Z

    return p0
.end method

.method public final getSupportInteruptCreatingSeedlingCard$pantanal_client_release()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->supportInteruptCreatingSeedlingCard:Z

    return p0
.end method

.method public final hostClassLoader(Ljava/lang/ClassLoader;)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->hostClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public final initViaPantacardSdk(Z)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->initViaPantacardSdk:Z

    return-object p0
.end method

.method public final isContextLoadedByAppDefaultClassLoader(Z)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->isContextLoadedByAppDefaultClassLoader:Z

    return-object p0
.end method

.method public final isContextLoadedByAppDefaultClassLoader$pantanal_client_release()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->isContextLoadedByAppDefaultClassLoader:Z

    return p0
.end method

.method public final setContextLoadedByAppDefaultClassLoader$pantanal_client_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->isContextLoadedByAppDefaultClassLoader:Z

    return-void
.end method

.method public final setDeltaOfLCAParentClassLoader$pantanal_client_release(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->deltaOfLCAParentClassLoader:I

    return-void
.end method

.method public final setEngineType$pantanal_client_release(Lcom/oplus/seedling/sdk/entity/EngineType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    return-void
.end method

.method public final setEntranceAuthorityName$pantanal_client_release(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->entranceAuthorityName:Ljava/lang/String;

    return-void
.end method

.method public final setHostClassLoader$pantanal_client_release(Ljava/lang/ClassLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->hostClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public final setInitViaPantacardSdk$pantanal_client_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->initViaPantacardSdk:Z

    return-void
.end method

.method public final setShouldNotifyCardServiceToInit$pantanal_client_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->shouldNotifyCardServiceToInit:Z

    return-void
.end method

.method public final setSupportInteruptCreatingSeedlingCard$pantanal_client_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->supportInteruptCreatingSeedlingCard:Z

    return-void
.end method

.method public final shouldNotifyCardServiceToInit(Z)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->shouldNotifyCardServiceToInit:Z

    return-object p0
.end method

.method public final supportInteruptCreatingSeedlingCard(Z)Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->supportInteruptCreatingSeedlingCard:Z

    return-object p0
.end method
