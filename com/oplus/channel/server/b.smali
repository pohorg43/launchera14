.class public final synthetic Lcom/oplus/channel/server/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/oplus/channel/server/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/b;

    invoke-direct {v0}, Lcom/oplus/channel/server/b;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/b;->a:Lcom/oplus/channel/server/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/oplus/channel/server/data/Command;

    invoke-static {p1}, Lcom/oplus/channel/server/ClientProxyImpl;->g(Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0
.end method
