.class public final Lm7/d2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/a1;
.implements Lm7/s;


# static fields
.field public static final a:Lm7/d2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm7/d2;

    invoke-direct {v0}, Lm7/d2;-><init>()V

    sput-object v0, Lm7/d2;->a:Lm7/d2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public getParent()Lm7/s1;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
