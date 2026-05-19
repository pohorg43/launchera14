.class public final synthetic Lp8/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic a:Lp8/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lp8/a;

    invoke-direct {v0}, Lp8/a;-><init>()V

    sput-object v0, Lp8/a;->a:Lp8/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    check-cast p1, Lp8/g;

    iget-wide p0, p1, Lp8/g;->a:J

    return-wide p0
.end method
