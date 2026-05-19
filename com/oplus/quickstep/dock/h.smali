.class public final synthetic Lcom/oplus/quickstep/dock/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/oplus/quickstep/dock/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/dock/h;

    invoke-direct {v0}, Lcom/oplus/quickstep/dock/h;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/dock/h;->a:Lcom/oplus/quickstep/dock/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockViewController;->b(Lcom/oplus/quickstep/dock/DockIconView;)V

    return-void
.end method
