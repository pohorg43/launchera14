.class public final synthetic Lv/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 4

    iput p2, p0, Lv/b;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lv/b;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lv/b;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->c(Landroid/content/Context;)V

    return-void

    :goto_c
    iget-object p0, p0, Lv/b;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->b(Landroid/content/Context;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
