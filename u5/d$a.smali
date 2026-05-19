.class public final Lu5/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lu5/d$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu5/d$a;

    invoke-direct {v0}, Lu5/d$a;-><init>()V

    sput-object v0, Lu5/d$a;->a:Lu5/d$a;

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

.method public c()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public d()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
