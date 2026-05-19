.class Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/checkbox/COUICheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadDrawableRunnable"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/checkbox/COUICheckBox;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/AttributeSet;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->b:Landroid/util/AttributeSet;

    iput p3, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v1, v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-boolean v4, Lcom/coui/appcompat/checkbox/COUICheckBox;->i:Z

    const-string v5, "COUICheckBox"

    if-eqz v4, :cond_3c

    const-string/jumbo v6, "runnable run, current thread = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " start time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->b:Landroid/util/AttributeSet;

    sget-object v8, Lcom/support/appcompat/R$styleable;->COUICheckBox:[I

    iget p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;->c:I

    invoke-virtual {v6, v7, v8, p0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    sget v3, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiButton:I

    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_68

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_60

    invoke-static {v0, v3}, Lcom/coui/appcompat/checkbox/COUICheckBox;->a(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V

    goto :goto_68

    :cond_60
    new-instance v6, Lcom/coui/appcompat/checkbox/a;

    invoke-direct {v6, v0, v3}, Lcom/coui/appcompat/checkbox/a;-><init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_68
    :goto_68
    if-eqz v4, :cond_7f

    const-string v0, "end time = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_82
    return-void
.end method
