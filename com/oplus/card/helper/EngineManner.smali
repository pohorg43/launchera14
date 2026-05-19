.class public abstract Lcom/oplus/card/helper/EngineManner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/EngineManner$Companion;
    }
.end annotation


# static fields
.field public static final CODE_CARD_LOAD_FAIL:I = 0x3e9

.field public static final CODE_CARD_LOAD_SUCCESS:I = 0x3e8

.field public static final Companion:Lcom/oplus/card/helper/EngineManner$Companion;

.field public static final KEY_CONTEXT_PARAM:Ljava/lang/String; = "contextParam"

.field public static final KEY_EVENT:Ljava/lang/String; = "event"

.field public static final KEY_UPDATE_CARD:Ljava/lang/String; = "UPDATE_CARD"

.field public static final TAG:Ljava/lang/String; = "EngineManner"


# instance fields
.field private cardInfo:Lcom/android/launcher3/card/LauncherCardInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/helper/EngineManner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/helper/EngineManner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/helper/EngineManner;->Companion:Lcom/oplus/card/helper/EngineManner$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 3

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/helper/EngineManner;->cardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    return-void
.end method


# virtual methods
.method public encapsulateBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string p1, "EMPTY"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract encapsulateBundle(Lpantanal/app/bean/PantanalUIData;)Landroid/os/Bundle;
.end method

.method public final getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/EngineManner;->cardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    return-object p0
.end method

.method public getCardVisibleRect()Landroid/graphics/Rect;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public isErrorCode(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isNormalCardEngine()Z
    .registers 1

    instance-of p0, p0, Lcom/oplus/card/helper/SmartEngineManner;

    return p0
.end method

.method public isQuickCardEngine()Z
    .registers 1

    instance-of p0, p0, Lcom/oplus/card/helper/InstantEngineManner;

    return p0
.end method

.method public isSeedCardEngine()Z
    .registers 1

    instance-of p0, p0, Lcom/android/launcher3/card/seed/SeedEngineManner;

    return p0
.end method

.method public needUpdateCardVisibleRect()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final setCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/helper/EngineManner;->cardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    return-void
.end method

.method public setCardVisibleRect(Landroid/graphics/Rect;)V
    .registers 2

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
