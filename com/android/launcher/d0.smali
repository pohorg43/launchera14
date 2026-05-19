.class public final synthetic Lcom/android/launcher/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/launcher/d0;

.field public static final synthetic c:Lcom/android/launcher/d0;

.field public static final synthetic d:Lcom/android/launcher/d0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/d0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/d0;->b:Lcom/android/launcher/d0;

    new-instance v0, Lcom/android/launcher/d0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/d0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/d0;->c:Lcom/android/launcher/d0;

    new-instance v0, Lcom/android/launcher/d0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/d0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/d0;->d:Lcom/android/launcher/d0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget p0, p0, Lcom/android/launcher/d0;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_e

    :pswitch_6  #0x1
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarViewController;->d()V

    return-void

    :pswitch_a  #0x0
    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->a()V

    return-void

    :goto_e
    invoke-static {}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->a()V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_a  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
