.class public final synthetic Lj2/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lj2/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lj2/b;

    invoke-direct {v0}, Lj2/b;-><init>()V

    sput-object v0, Lj2/b;->a:Lj2/b;

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

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/WellBeingAssistantModeInputConsumer;->a(Ljava/lang/Boolean;)V

    return-void
.end method
