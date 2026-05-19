.class public final Lq7/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll4/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lq7/r;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq7/r;

    invoke-direct {v0}, Lq7/r;-><init>()V

    sput-object v0, Lq7/r;->a:Lq7/r;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Ll4/f;
    .registers 1

    sget-object p0, Ll4/h;->a:Ll4/h;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
