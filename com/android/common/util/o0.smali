.class public final synthetic Lcom/android/common/util/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;I)V
    .registers 3

    iput p2, p0, Lcom/android/common/util/o0;->a:I

    packed-switch p2, :pswitch_data_30

    goto :goto_2a

    :pswitch_6  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    return-void

    :pswitch_c  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    return-void

    :pswitch_12  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    return-void

    :pswitch_18  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    return-void

    :pswitch_1e  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    return-void

    :pswitch_24  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    return-void

    :goto_2a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_1e  #00000002
        :pswitch_18  #00000003
        :pswitch_12  #00000004
        :pswitch_c  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/common/util/o0;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2a

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->M(Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_c  #0x4
    iget-object p0, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->B0(Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_12  #0x3
    iget-object p0, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->S(Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_18  #0x2
    iget-object p0, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->O(Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_1e  #0x1
    iget-object p0, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->f0(Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_24  #0x0
    iget-object p0, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/common/util/OplusFoldStateHelper;->c(Lcom/android/launcher/Launcher;)V

    return-void

    :goto_2a
    iget-object p0, p0, Lcom/android/common/util/o0;->b:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/touch/ShelfDialog;->b(Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_1e  #00000001
        :pswitch_18  #00000002
        :pswitch_12  #00000003
        :pswitch_c  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
