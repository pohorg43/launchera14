.class public final Lpantanal/app/groupcard/GroupCardManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/GroupCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGroupCardManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupCardManager.kt\npantanal/app/groupcard/GroupCardManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/app/groupcard/GroupCardManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lpantanal/app/groupcard/GroupCardManager;
    .registers 3

    invoke-static {}, Lpantanal/app/groupcard/GroupCardManager;->access$getInstance$cp()Lpantanal/app/groupcard/GroupCardManager;

    move-result-object v0

    if-nez v0, :cond_1c

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lpantanal/app/groupcard/GroupCardManager;->access$getInstance$cp()Lpantanal/app/groupcard/GroupCardManager;

    move-result-object v0

    if-nez v0, :cond_17

    new-instance v0, Lpantanal/app/groupcard/GroupCardManager;

    invoke-direct {v0}, Lpantanal/app/groupcard/GroupCardManager;-><init>()V

    sget-object v1, Lpantanal/app/groupcard/GroupCardManager;->Companion:Lpantanal/app/groupcard/GroupCardManager$Companion;

    invoke-static {v0}, Lpantanal/app/groupcard/GroupCardManager;->access$setInstance$cp(Lpantanal/app/groupcard/GroupCardManager;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1c
    :goto_1c
    return-object v0
.end method
