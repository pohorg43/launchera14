.class public final synthetic Lcom/android/launcher3/card/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/card/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/card/LongClickEffectHandler;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/card/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/card/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/card/i;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/card/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->u(Lcom/android/launcher3/folder/OplusFolder;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/card/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->a(Lcom/android/launcher3/card/LongClickEffectHandler;Lcom/android/launcher3/Alarm;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher3/card/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->a(Landroid/view/View;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
