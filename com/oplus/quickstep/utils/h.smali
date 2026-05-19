.class public final synthetic Lcom/oplus/quickstep/utils/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic a:Lcom/oplus/quickstep/utils/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/h;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/h;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/h;->a:Lcom/oplus/quickstep/utils/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->c()V

    return-void
.end method
