.class public final synthetic Lr0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/a;->a:Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 1

    iget-object p0, p0, Lr0/a;->a:Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->a(Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;)V

    return-void
.end method
