.class public final Lpantanal/app/bean/Configuration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/Configuration$Builder;
    }
.end annotation


# instance fields
.field private builder:Lpantanal/app/bean/Configuration$Builder;

.field private deltaOfLCAParentClassLoader:I

.field private enableV2Callback:Z

.field private final entrance:Lpantanal/app/bean/Entrance;

.field private hostClassLoader:Ljava/lang/ClassLoader;

.field private final instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

.field private isContextLoadedByAppDefaultClassLoader:Z

.field private final launchInterceptorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lpantanal/app/bean/Entrance;",
            "Lpantanal/app/ILaunchInterceptorV2;",
            ">;"
        }
    .end annotation
.end field

.field private final launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

.field private final loadTimeout:I

.field private final logger:Ly8/a;

.field private final mode:Lpantanal/app/bean/Mode;

.field private final seedingConfiguration:Lpantanal/app/seedling/SeedlingConfiguration;

.field private shouldNotifyCardServiceToInit:Z

.field private shouldParseSeedlingUIData:Z

.field private shouldPreInitSeedlingPlugin:Z

.field private final supportEntranceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/app/bean/Entrance;",
            ">;"
        }
    .end annotation
.end field

.field private supportInterruptLoadingSeedlingCard:Z

.field private final supportedCardCategory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpantanal/app/bean/Configuration$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getEntrance$pantanal_interface_release()Lpantanal/app/bean/Entrance;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->entrance:Lpantanal/app/bean/Entrance;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getSupportEntranceList$pantanal_interface_release()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->supportEntranceList:Ljava/util/List;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getLaunchInterceptorMap$pantanal_interface_release()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->launchInterceptorMap:Ljava/util/Map;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getMode$pantanal_interface_release()Lpantanal/app/bean/Mode;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->mode:Lpantanal/app/bean/Mode;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getSupportedCardCategory$pantanal_interface_release()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->supportedCardCategory:Ljava/util/List;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getLoadTimeout$pantanal_interface_release()I

    move-result p1

    iput p1, p0, Lpantanal/app/bean/Configuration;->loadTimeout:I

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getSeedingConfiguration$pantanal_interface_release()Lpantanal/app/seedling/SeedlingConfiguration;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->seedingConfiguration:Lpantanal/app/seedling/SeedlingConfiguration;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getInstantConfiguration$pantanal_interface_release()Lpantanal/app/instant/InstantConfiguration;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getLauncherInterceptor$pantanal_interface_release()Lpantanal/app/ILaunchInterceptor;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getLogger$pantanal_interface_release()Ly8/a;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->logger:Ly8/a;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getShouldNotifyCardServiceToInit$pantanal_interface_release()Z

    move-result p1

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->shouldNotifyCardServiceToInit:Z

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getSupportInterruptLoadingSeedlingCard$pantanal_interface_release()Z

    move-result p1

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->supportInterruptLoadingSeedlingCard:Z

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getShouldPreInitSeedlingPlugin$pantanal_interface_release()Z

    move-result p1

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->shouldPreInitSeedlingPlugin:Z

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->isContextLoadedByAppDefaultClassLoader$pantanal_interface_release()Z

    move-result p1

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->isContextLoadedByAppDefaultClassLoader:Z

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getShouldParseSeedlingUIData$pantanal_interface_release()Z

    move-result p1

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->shouldParseSeedlingUIData:Z

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getHostClassLoader$pantanal_interface_release()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->hostClassLoader:Ljava/lang/ClassLoader;

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getDeltaOfLCAParentClassLoader$pantanal_interface_release()I

    move-result p1

    iput p1, p0, Lpantanal/app/bean/Configuration;->deltaOfLCAParentClassLoader:I

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration$Builder;->getEnableV2Callback$pantanal_interface_release()Z

    move-result p1

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->enableV2Callback:Z

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/bean/Configuration;Lpantanal/app/bean/Configuration$Builder;ILjava/lang/Object;)Lpantanal/app/bean/Configuration;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    :cond_6
    invoke-virtual {p0, p1}, Lpantanal/app/bean/Configuration;->copy(Lpantanal/app/bean/Configuration$Builder;)Lpantanal/app/bean/Configuration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lpantanal/app/bean/Configuration$Builder;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    return-object p0
.end method

.method public final copy(Lpantanal/app/bean/Configuration$Builder;)Lpantanal/app/bean/Configuration;
    .registers 2

    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/bean/Configuration;

    invoke-direct {p0, p1}, Lpantanal/app/bean/Configuration;-><init>(Lpantanal/app/bean/Configuration$Builder;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/bean/Configuration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/bean/Configuration;

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    iget-object p1, p1, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBuilder()Lpantanal/app/bean/Configuration$Builder;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    return-object p0
.end method

.method public final getDeltaOfLCAParentClassLoader()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/Configuration;->deltaOfLCAParentClassLoader:I

    return p0
.end method

.method public final getEnableV2Callback()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration;->enableV2Callback:Z

    return p0
.end method

.method public final getEntrance()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final getHostClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->hostClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public final getInstantConfiguration()Lpantanal/app/instant/InstantConfiguration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

    return-object p0
.end method

.method public final getLaunchInterceptorMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lpantanal/app/bean/Entrance;",
            "Lpantanal/app/ILaunchInterceptorV2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->launchInterceptorMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getLauncherInterceptor()Lpantanal/app/ILaunchInterceptor;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    return-object p0
.end method

.method public final getLoadTimeout()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/Configuration;->loadTimeout:I

    return p0
.end method

.method public final getLogger()Ly8/a;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->logger:Ly8/a;

    return-object p0
.end method

.method public final getMode()Lpantanal/app/bean/Mode;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->mode:Lpantanal/app/bean/Mode;

    return-object p0
.end method

.method public final getSeedingConfiguration()Lpantanal/app/seedling/SeedlingConfiguration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->seedingConfiguration:Lpantanal/app/seedling/SeedlingConfiguration;

    return-object p0
.end method

.method public final getShouldNotifyCardServiceToInit()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration;->shouldNotifyCardServiceToInit:Z

    return p0
.end method

.method public final getShouldParseSeedlingUIData()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration;->shouldParseSeedlingUIData:Z

    return p0
.end method

.method public final getShouldPreInitSeedlingPlugin()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration;->shouldPreInitSeedlingPlugin:Z

    return p0
.end method

.method public final getSupportEntranceList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/bean/Entrance;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->supportEntranceList:Ljava/util/List;

    return-object p0
.end method

.method public final getSupportInterruptLoadingSeedlingCard()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration;->supportInterruptLoadingSeedlingCard:Z

    return p0
.end method

.method public final getSupportedCardCategory()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardCategory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->supportedCardCategory:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isContextLoadedByAppDefaultClassLoader()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration;->isContextLoadedByAppDefaultClassLoader:Z

    return p0
.end method

.method public final setBuilder(Lpantanal/app/bean/Configuration$Builder;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->builder:Lpantanal/app/bean/Configuration$Builder;

    return-void
.end method

.method public final setContextLoadedByAppDefaultClassLoader(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->isContextLoadedByAppDefaultClassLoader:Z

    return-void
.end method

.method public final setDeltaOfLCAParentClassLoader(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/Configuration;->deltaOfLCAParentClassLoader:I

    return-void
.end method

.method public final setEnableV2Callback(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->enableV2Callback:Z

    return-void
.end method

.method public final setHostClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/Configuration;->hostClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public final setShouldNotifyCardServiceToInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->shouldNotifyCardServiceToInit:Z

    return-void
.end method

.method public final setShouldParseSeedlingUIData(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->shouldParseSeedlingUIData:Z

    return-void
.end method

.method public final setShouldPreInitSeedlingPlugin(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->shouldPreInitSeedlingPlugin:Z

    return-void
.end method

.method public final setSupportInterruptLoadingSeedlingCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration;->supportInterruptLoadingSeedlingCard:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/app/bean/Configuration;->entrance:Lpantanal/app/bean/Entrance;

    iget-object v2, v0, Lpantanal/app/bean/Configuration;->supportEntranceList:Ljava/util/List;

    iget-object v3, v0, Lpantanal/app/bean/Configuration;->mode:Lpantanal/app/bean/Mode;

    iget v4, v0, Lpantanal/app/bean/Configuration;->loadTimeout:I

    iget-object v5, v0, Lpantanal/app/bean/Configuration;->supportedCardCategory:Ljava/util/List;

    iget-boolean v6, v0, Lpantanal/app/bean/Configuration;->shouldNotifyCardServiceToInit:Z

    iget-boolean v7, v0, Lpantanal/app/bean/Configuration;->shouldPreInitSeedlingPlugin:Z

    iget-boolean v8, v0, Lpantanal/app/bean/Configuration;->isContextLoadedByAppDefaultClassLoader:Z

    iget-object v9, v0, Lpantanal/app/bean/Configuration;->hostClassLoader:Ljava/lang/ClassLoader;

    iget v10, v0, Lpantanal/app/bean/Configuration;->deltaOfLCAParentClassLoader:I

    iget-object v11, v0, Lpantanal/app/bean/Configuration;->seedingConfiguration:Lpantanal/app/seedling/SeedlingConfiguration;

    iget-object v12, v0, Lpantanal/app/bean/Configuration;->instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

    iget-boolean v13, v0, Lpantanal/app/bean/Configuration;->shouldParseSeedlingUIData:Z

    iget-object v14, v0, Lpantanal/app/bean/Configuration;->launchInterceptorMap:Ljava/util/Map;

    iget-object v15, v0, Lpantanal/app/bean/Configuration;->launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    iget-boolean v0, v0, Lpantanal/app/bean/Configuration;->enableV2Callback:Z

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "Configuration(entrance="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportEntranceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedCardCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",shouldNotifyCardServiceToInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldPreInitSeedlingPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isContextLoadedByAppDefaultClassLoader="

    const-string v2, ", hostClassLoader="

    invoke-static {v0, v7, v1, v8, v2}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deltaOfLCAParentClassLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "seedingConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instantConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",shouldParseSeedlingUIData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",launchInterceptorMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", launcherInterceptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), enableV2Callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
