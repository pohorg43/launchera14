.class public Ld1/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lt1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/c<",
            "Ld1/m$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/m$a;

    invoke-direct {v0, p0, p1, p2}, Ld1/m$a;-><init>(Ld1/m;J)V

    iput-object v0, p0, Ld1/m;->a:Lt1/c;

    return-void
.end method
