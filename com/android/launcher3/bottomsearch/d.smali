.class public final synthetic Lcom/android/launcher3/bottomsearch/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/bottomsearch/PopupStateListener;

.field public final synthetic b:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lcom/android/launcher3/OplusDragLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/bottomsearch/PopupStateListener;Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/OplusDragLayer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/d;->a:Lcom/android/launcher3/bottomsearch/PopupStateListener;

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/d;->b:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    iput-object p3, p0, Lcom/android/launcher3/bottomsearch/d;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/launcher3/bottomsearch/d;->d:Lcom/android/launcher3/OplusDragLayer;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/d;->a:Lcom/android/launcher3/bottomsearch/PopupStateListener;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/d;->b:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/d;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/d;->d:Lcom/android/launcher3/OplusDragLayer;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->a(Lcom/android/launcher3/bottomsearch/PopupStateListener;Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/OplusDragLayer;)V

    return-void
.end method
