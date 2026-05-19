.class public final synthetic Lb0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/powersave/utils/SoftKeyBoardListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/powersave/utils/SoftKeyBoardListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/a;->a:Lcom/android/launcher/powersave/utils/SoftKeyBoardListener;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 1

    iget-object p0, p0, Lb0/a;->a:Lcom/android/launcher/powersave/utils/SoftKeyBoardListener;

    invoke-static {p0}, Lcom/android/launcher/powersave/utils/SoftKeyBoardListener;->a(Lcom/android/launcher/powersave/utils/SoftKeyBoardListener;)V

    return-void
.end method
