.class public final Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final disableFloatingIcon(Landroid/view/View;Z)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p2, :cond_2a

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    instance-of p0, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_2a

    invoke-static {}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->access$getDISABLE_FLOATING_ICON$cp()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method
