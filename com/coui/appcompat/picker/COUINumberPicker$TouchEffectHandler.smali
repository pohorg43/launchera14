.class Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchEffectHandler"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/os/Looper;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/picker/COUINumberPicker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1  # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    if-eq v0, v1, :cond_8

    goto :goto_78

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->e:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->H0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->H0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3a
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v2, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->R:I

    if-nez v2, :cond_78

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    if-eqz v0, :cond_78

    invoke-interface {v0}, Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;->a()V

    goto :goto_78

    :cond_4d
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->e0:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->j0:I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "sound_effects_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_68

    goto :goto_69

    :cond_68
    move v1, v3

    :goto_69
    if-eqz v1, :cond_78

    iget-object v4, v2, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->b:Landroid/media/SoundPool;

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_78
    :goto_78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
