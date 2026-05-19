.class public final Lu6/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu6/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lu6/l$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu6/l$a;

    invoke-direct {v0}, Lu6/l$a;-><init>()V

    sput-object v0, Lu6/l$a;->a:Lu6/l$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public c()Le6/a;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public e()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public g()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
