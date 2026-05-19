.class public final Lu6/u$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu6/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lu6/u$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu6/u$a;

    invoke-direct {v0}, Lu6/u$a;-><init>()V

    sput-object v0, Lu6/u$a;->a:Lu6/u$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ly6/s0;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
