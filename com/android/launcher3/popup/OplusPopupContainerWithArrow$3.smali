.class Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->addScrollViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$900(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$902(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$1000(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p1

    const-string/jumbo p3, "popup_shortcut_show_guide"

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$1100(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    :cond_23
    return-void
.end method
