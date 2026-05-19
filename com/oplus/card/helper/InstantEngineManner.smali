.class public final Lcom/oplus/card/helper/InstantEngineManner;
.super Lcom/oplus/card/helper/EngineManner;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/InstantEngineManner$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/helper/InstantEngineManner$Companion;

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_EVENT:Ljava/lang/String; = "event"

.field public static final REMOVE_IN_GROUP_CARD:I = 0xc9

.field public static final TYPE_DESIGN_FOUR_WIDTH:F = 328.0f

.field public static final TYPE_DESIGN_TWO_WIDTH:F = 158.0f

.field public static final TYPE_DESIGN_ZERO_WIDTH:I = 0x0

.field public static final VALUE_REMOVE_CARD:Ljava/lang/String; = "RM_CARD"


# instance fields
.field private context:Landroid/content/Context;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private final seedParams:Lcom/android/launcher3/card/seed/SeedParams;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/helper/InstantEngineManner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/helper/InstantEngineManner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/helper/InstantEngineManner;->Companion:Lcom/oplus/card/helper/InstantEngineManner$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/EngineManner;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    iput-object p1, p0, Lcom/oplus/card/helper/InstantEngineManner;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/card/helper/InstantEngineManner;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/helper/InstantEngineManner;->mVisibleRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public encapsulateBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/card/helper/EngineManner;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_ui_data"

    const-string v3, "EngineManner"

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encapsulateBundle: url from db: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    :cond_33
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getInstantCardUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encapsulateBundle: instantCardUrl = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result p1

    const-string v0, "key_instant_design_size"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_59
    invoke-virtual {p0}, Lcom/oplus/card/helper/InstantEngineManner;->getCardVisibleRect()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_71

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    const-string v0, "key_instant_container_width"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const-string p1, "key_instant_container_height"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_71
    return-object v1
.end method

.method public encapsulateBundle(Lpantanal/app/bean/PantanalUIData;)Landroid/os/Bundle;
    .registers 7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/card/helper/EngineManner;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getInstantCardUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    if-ne v1, v2, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    move v1, v3

    :goto_2d
    if-eqz v1, :cond_77

    const-string v1, "encapsulateBundle:  instantCardUrl = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getInstantCardUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " instantCardUrlContextParam = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getInstantCardUrlContextParam()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "EngineManner"

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getInstantCardUrlContextParam()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5f

    move v1, v2

    goto :goto_60

    :cond_5f
    move v1, v3

    :goto_60
    if-ne v1, v2, :cond_63

    goto :goto_64

    :cond_63
    move v2, v3

    :goto_64
    const-string v1, "key_ui_data"

    if-eqz v2, :cond_70

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getInstantCardUrlContextParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_70
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getInstantCardUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    :goto_77
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    const-string v1, "key_instant_design_size"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_80
    invoke-virtual {p0}, Lcom/oplus/card/helper/InstantEngineManner;->getCardVisibleRect()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_98

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v1, "key_instant_container_width"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const-string v0, "key_instant_container_height"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_98
    return-object p1
.end method

.method public getCardVisibleRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/InstantEngineManner;->mVisibleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/InstantEngineManner;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/InstantEngineManner;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    return-object p0
.end method

.method public isErrorCode(I)Z
    .registers 2

    if-eqz p1, :cond_9

    const/16 p0, 0xc9

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public setCardVisibleRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/helper/InstantEngineManner;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/helper/InstantEngineManner;->context:Landroid/content/Context;

    return-void
.end method
