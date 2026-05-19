.class public final synthetic Lcom/android/launcher3/card/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/f;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/f;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardUtil;->d(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
