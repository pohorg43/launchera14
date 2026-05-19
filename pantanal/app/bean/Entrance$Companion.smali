.class public final Lpantanal/app/bean/Entrance$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/Entrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEntrance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Entrance.kt\npantanal/app/bean/Entrance$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n1#2:399\n*E\n"
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

    invoke-direct {p0}, Lpantanal/app/bean/Entrance$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findByType(I)Lpantanal/app/bean/Entrance;
    .registers 7

    invoke-static {}, Lpantanal/app/bean/Entrance;->values()[Lpantanal/app/bean/Entrance;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_1a

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v4

    if-ne v4, p1, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    move v4, v1

    :goto_14
    if-eqz v4, :cond_17

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    if-nez v3, :cond_1f

    sget-object v3, Lpantanal/app/bean/Entrance;->UNKNOWN:Lpantanal/app/bean/Entrance;

    :cond_1f
    return-object v3
.end method
