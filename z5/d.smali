.class public final Lz5/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/c;


# static fields
.field public static final a:Lz5/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz5/d;

    invoke-direct {v0}, Lz5/d;-><init>()V

    sput-object v0, Lz5/d;->a:Lz5/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lh6/f;",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lz5/d;->b()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()Lh6/c;
    .registers 1

    invoke-static {p0}, Lj5/c$a;->a(Lj5/c;)Lh6/c;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    invoke-virtual {p0}, Lz5/d;->b()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getType()Ly6/l0;
    .registers 1

    invoke-virtual {p0}, Lz5/d;->b()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "[EnhancedType]"

    return-object p0
.end method
