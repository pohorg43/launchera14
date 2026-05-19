.class public final Lcom/android/launcher3/card/groupcard/GroupCardUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardUtil;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardUtil;

    invoke-direct {v0}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isGroupCard(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v1, 0x1

    const v2, 0xd3ecf26

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne p0, v2, :cond_10

    goto :goto_25

    :cond_10
    move v1, v3

    goto :goto_25

    :cond_12
    instance-of v0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;

    if-eqz v0, :cond_1f

    check-cast p0, Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result p0

    if-ne p0, v2, :cond_10

    goto :goto_25

    :cond_1f
    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_10

    instance-of v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    :goto_25
    return v1
.end method

.method public static final isGroupChildCard(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v0, :cond_12

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    instance-of p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
