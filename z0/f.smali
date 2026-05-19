.class public Lz0/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb1/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb1/a$b;"
    }
.end annotation


# instance fields
.field public final a:Lw0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/a<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Lw0/e;


# direct methods
.method public constructor <init>(Lw0/a;Ljava/lang/Object;Lw0/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/a<",
            "TDataType;>;TDataType;",
            "Lw0/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/f;->a:Lw0/a;

    iput-object p2, p0, Lz0/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lz0/f;->c:Lw0/e;

    return-void
.end method
