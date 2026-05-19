.class Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinUnPinShortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIsPinned:Z

.field public final synthetic this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)V
    .registers 12

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    if-eqz p5, :cond_8

    const p1, 0x7f080745

    goto :goto_b

    :cond_8
    const p1, 0x7f08073b

    :goto_b
    move v1, p1

    if-eqz p5, :cond_12

    const p1, 0x7f1204f9

    goto :goto_15

    :cond_12
    const p1, 0x7f1200a3

    :goto_15
    move v2, p1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-boolean p5, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->mIsPinned:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-boolean p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->mIsPinned:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->access$000(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/common/util/o;

    invoke-direct {v2, v1}, Lcom/android/common/util/o;-><init>(Ljava/util/Set;)V

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->access$100(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V

    goto :goto_2b

    :cond_18
    iget-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->access$000(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/dragndrop/f;

    invoke-direct {v2, v1}, Lcom/android/launcher3/dragndrop/f;-><init>(Ljava/util/Set;)V

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->access$100(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V

    :goto_2b
    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-static {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->access$200(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method
