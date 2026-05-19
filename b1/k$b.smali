.class public final Lb1/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu1/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:Lu1/d;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu1/d$b;

    invoke-direct {v0}, Lu1/d$b;-><init>()V

    iput-object v0, p0, Lb1/k$b;->b:Lu1/d;

    iput-object p1, p0, Lb1/k$b;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public d()Lu1/d;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lb1/k$b;->b:Lu1/d;

    return-object p0
.end method
