.class public final Lz5/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ly6/s0;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Ly6/s0;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/f$b;->a:Ly6/s0;

    iput p2, p0, Lz5/f$b;->b:I

    iput-boolean p3, p0, Lz5/f$b;->c:Z

    return-void
.end method
