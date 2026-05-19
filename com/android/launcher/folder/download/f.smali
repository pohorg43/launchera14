.class public final synthetic Lcom/android/launcher/folder/download/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/download/MarketServiceManager;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/download/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/download/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/download/f;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/download/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/download/MarketServiceManager;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/MarketServiceManager;->a(Lcom/android/launcher/folder/download/MarketServiceManager;Lcom/android/launcher3/Alarm;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher/folder/download/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->f(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
