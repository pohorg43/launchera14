.class public final synthetic Lcom/android/wm/shell/pip/phone/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip/phone/o;->a:I

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/o;->b:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/phone/o;->a:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/o;->b:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->f(ILandroid/content/ComponentName;Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method
