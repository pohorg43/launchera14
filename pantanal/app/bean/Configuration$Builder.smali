.class public final Lpantanal/app/bean/Configuration$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private deltaOfLCAParentClassLoader:I

.field private enableV2Callback:Z

.field private entrance:Lpantanal/app/bean/Entrance;

.field private hostClassLoader:Ljava/lang/ClassLoader;

.field private instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

.field private isContextLoadedByAppDefaultClassLoader:Z

.field private launchInterceptorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lpantanal/app/bean/Entrance;",
            "Lpantanal/app/ILaunchInterceptorV2;",
            ">;"
        }
    .end annotation
.end field

.field private launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

.field private loadTimeout:I

.field private logger:Ly8/a;

.field private mode:Lpantanal/app/bean/Mode;

.field private seedingConfiguration:Lpantanal/app/seedling/SeedlingConfiguration;

.field private shouldNotifyCardServiceToInit:Z

.field private shouldParseSeedlingUIData:Z

.field private shouldPreInitSeedlingPlugin:Z

.field private supportEntranceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/app/bean/Entrance;",
            ">;"
        }
    .end annotation
.end field

.field private supportInterruptLoadingSeedlingCard:Z

.field private supportedCardCategory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lpantanal/app/bean/CardCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lpantanal/app/bean/Entrance;->UNKNOWN:Lpantanal/app/bean/Entrance;

    iput-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->supportEntranceList:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->launchInterceptorMap:Ljava/util/Map;

    sget-object v0, Lpantanal/app/bean/Mode;->STANDARD:Lpantanal/app/bean/Mode;

    iput-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->mode:Lpantanal/app/bean/Mode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->supportedCardCategory:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lpantanal/app/bean/Configuration$Builder;->loadTimeout:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpantanal/app/bean/Configuration$Builder;->isContextLoadedByAppDefaultClassLoader:Z

    iput v0, p0, Lpantanal/app/bean/Configuration$Builder;->deltaOfLCAParentClassLoader:I

    return-void
.end method


# virtual methods
.method public final build()Lpantanal/app/bean/Configuration;
    .registers 2

    new-instance v0, Lpantanal/app/bean/Configuration;

    invoke-direct {v0, p0}, Lpantanal/app/bean/Configuration;-><init>(Lpantanal/app/bean/Configuration$Builder;)V

    return-object v0
.end method

.method public final deltaOfLCAParentClassLoader(I)Lpantanal/app/bean/Configuration$Builder;
    .registers 2

    iput p1, p0, Lpantanal/app/bean/Configuration$Builder;->deltaOfLCAParentClassLoader:I

    return-object p0
.end method

.method public final enableV2Callback(Z)Lpantanal/app/bean/Configuration$Builder;
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->enableV2Callback:Z

    return-object p0
.end method

.method public final entrance(I)Lpantanal/app/bean/Configuration$Builder;
    .registers 3

    sget-object v0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v0, p1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final entranceToLauncherInterceptorMap(Ljava/util/Map;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lpantanal/app/bean/Entrance;",
            "+",
            "Lpantanal/app/ILaunchInterceptorV2;",
            ">;)",
            "Lpantanal/app/bean/Configuration$Builder;"
        }
    .end annotation

    const-string v0, "entranceToLauncherInterceptorMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->launchInterceptorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->launchInterceptorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final getDeltaOfLCAParentClassLoader$pantanal_interface_release()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/Configuration$Builder;->deltaOfLCAParentClassLoader:I

    return p0
.end method

.method public final getEnableV2Callback$pantanal_interface_release()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration$Builder;->enableV2Callback:Z

    return p0
.end method

.method public final getEntrance$pantanal_interface_release()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final getHostClassLoader$pantanal_interface_release()Ljava/lang/ClassLoader;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->hostClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public final getInstantConfiguration$pantanal_interface_release()Lpantanal/app/instant/InstantConfiguration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

    return-object p0
.end method

.method public final getLaunchInterceptorMap$pantanal_interface_release()Ljava/util/Map;
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

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->launchInterceptorMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getLauncherInterceptor$pantanal_interface_release()Lpantanal/app/ILaunchInterceptor;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    return-object p0
.end method

.method public final getLoadTimeout$pantanal_interface_release()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/Configuration$Builder;->loadTimeout:I

    return p0
.end method

.method public final getLogger$pantanal_interface_release()Ly8/a;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->logger:Ly8/a;

    return-object p0
.end method

.method public final getMode$pantanal_interface_release()Lpantanal/app/bean/Mode;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->mode:Lpantanal/app/bean/Mode;

    return-object p0
.end method

.method public final getSeedingConfiguration$pantanal_interface_release()Lpantanal/app/seedling/SeedlingConfiguration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->seedingConfiguration:Lpantanal/app/seedling/SeedlingConfiguration;

    return-object p0
.end method

.method public final getShouldNotifyCardServiceToInit$pantanal_interface_release()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration$Builder;->shouldNotifyCardServiceToInit:Z

    return p0
.end method

.method public final getShouldParseSeedlingUIData$pantanal_interface_release()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration$Builder;->shouldParseSeedlingUIData:Z

    return p0
.end method

.method public final getShouldPreInitSeedlingPlugin$pantanal_interface_release()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration$Builder;->shouldPreInitSeedlingPlugin:Z

    return p0
.end method

.method public final getSupportEntranceList$pantanal_interface_release()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/bean/Entrance;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->supportEntranceList:Ljava/util/List;

    return-object p0
.end method

.method public final getSupportInterruptLoadingSeedlingCard$pantanal_interface_release()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration$Builder;->supportInterruptLoadingSeedlingCard:Z

    return p0
.end method

.method public final getSupportedCardCategory$pantanal_interface_release()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardCategory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/Configuration$Builder;->supportedCardCategory:Ljava/util/List;

    return-object p0
.end method

.method public final hostClassLoader(Ljava/lang/ClassLoader;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3

    const-string v0, "hostClassLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->hostClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public final instantConfiguration(Lpantanal/app/instant/InstantConfiguration;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

    return-object p0
.end method

.method public final isContextLoadedByAppDefaultClassLoader(Z)Lpantanal/app/bean/Configuration$Builder;
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->isContextLoadedByAppDefaultClassLoader:Z

    return-object p0
.end method

.method public final isContextLoadedByAppDefaultClassLoader$pantanal_interface_release()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/Configuration$Builder;->isContextLoadedByAppDefaultClassLoader:Z

    return p0
.end method

.method public final launchInterceptor(Lpantanal/app/ILaunchInterceptor;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    return-object p0
.end method

.method public final loadTimeout(I)Lpantanal/app/bean/Configuration$Builder;
    .registers 2

    iput p1, p0, Lpantanal/app/bean/Configuration$Builder;->loadTimeout:I

    return-object p0
.end method

.method public final logger(Ly8/a;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->logger:Ly8/a;

    return-object p0
.end method

.method public final seedlingConfiguration(Lpantanal/app/seedling/SeedlingConfiguration;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->seedingConfiguration:Lpantanal/app/seedling/SeedlingConfiguration;

    return-object p0
.end method

.method public final setContextLoadedByAppDefaultClassLoader$pantanal_interface_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->isContextLoadedByAppDefaultClassLoader:Z

    return-void
.end method

.method public final setDeltaOfLCAParentClassLoader$pantanal_interface_release(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/Configuration$Builder;->deltaOfLCAParentClassLoader:I

    return-void
.end method

.method public final setEnableV2Callback$pantanal_interface_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->enableV2Callback:Z

    return-void
.end method

.method public final setEntrance$pantanal_interface_release(Lpantanal/app/bean/Entrance;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->entrance:Lpantanal/app/bean/Entrance;

    return-void
.end method

.method public final setHostClassLoader$pantanal_interface_release(Ljava/lang/ClassLoader;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->hostClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public final setInstantConfiguration$pantanal_interface_release(Lpantanal/app/instant/InstantConfiguration;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

    return-void
.end method

.method public final setLaunchInterceptorMap$pantanal_interface_release(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lpantanal/app/bean/Entrance;",
            "Lpantanal/app/ILaunchInterceptorV2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->launchInterceptorMap:Ljava/util/Map;

    return-void
.end method

.method public final setLauncherInterceptor$pantanal_interface_release(Lpantanal/app/ILaunchInterceptor;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    return-void
.end method

.method public final setLoadTimeout$pantanal_interface_release(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/Configuration$Builder;->loadTimeout:I

    return-void
.end method

.method public final setLogger$pantanal_interface_release(Ly8/a;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->logger:Ly8/a;

    return-void
.end method

.method public final setMode(Lpantanal/app/bean/Mode;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->mode:Lpantanal/app/bean/Mode;

    return-object p0
.end method

.method public final setMode$pantanal_interface_release(Lpantanal/app/bean/Mode;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->mode:Lpantanal/app/bean/Mode;

    return-void
.end method

.method public final setSeedingConfiguration$pantanal_interface_release(Lpantanal/app/seedling/SeedlingConfiguration;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->seedingConfiguration:Lpantanal/app/seedling/SeedlingConfiguration;

    return-void
.end method

.method public final setShouldNotifyCardServiceToInit$pantanal_interface_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->shouldNotifyCardServiceToInit:Z

    return-void
.end method

.method public final setShouldParseSeedlingUIData$pantanal_interface_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->shouldParseSeedlingUIData:Z

    return-void
.end method

.method public final setShouldPreInitSeedlingPlugin$pantanal_interface_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->shouldPreInitSeedlingPlugin:Z

    return-void
.end method

.method public final setSupportEntranceList$pantanal_interface_release(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/app/bean/Entrance;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->supportEntranceList:Ljava/util/List;

    return-void
.end method

.method public final setSupportInterruptLoadingSeedlingCard$pantanal_interface_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->supportInterruptLoadingSeedlingCard:Z

    return-void
.end method

.method public final setSupportedCardCategory$pantanal_interface_release(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpantanal/app/bean/CardCategory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->supportedCardCategory:Ljava/util/List;

    return-void
.end method

.method public final shouldNotifyCardServiceToInit(Z)Lpantanal/app/bean/Configuration$Builder;
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->shouldNotifyCardServiceToInit:Z

    return-object p0
.end method

.method public final shouldParseSeedlingUIData(Z)Lpantanal/app/bean/Configuration$Builder;
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->shouldParseSeedlingUIData:Z

    return-object p0
.end method

.method public final shouldPreInitSeedlingPlugin(Z)Lpantanal/app/bean/Configuration$Builder;
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->shouldPreInitSeedlingPlugin:Z

    return-object p0
.end method

.method public final supportEntranceList(Ljava/util/List;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpantanal/app/bean/Entrance;",
            ">;)",
            "Lpantanal/app/bean/Configuration$Builder;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->supportEntranceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lpantanal/app/bean/Configuration$Builder;->supportEntranceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final supportInterruptLoadingSeedlingCard(Z)Lpantanal/app/bean/Configuration$Builder;
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/Configuration$Builder;->supportInterruptLoadingSeedlingCard:Z

    return-object p0
.end method

.method public final supportedCardCategory(Ljava/util/List;)Lpantanal/app/bean/Configuration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpantanal/app/bean/CardCategory;",
            ">;)",
            "Lpantanal/app/bean/Configuration$Builder;"
        }
    .end annotation

    const-string v0, "cardCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/Configuration$Builder;->supportedCardCategory:Ljava/util/List;

    return-object p0
.end method
