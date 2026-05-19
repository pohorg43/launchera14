.class public final synthetic Lcom/oplus/quickstep/utils/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/oplus/quickstep/utils/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/g;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/g;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/g;->a:Lcom/oplus/quickstep/utils/g;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->a()V

    return-void
.end method
