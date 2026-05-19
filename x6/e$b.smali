.class public Lx6/e$b;
.super Lx6/e$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/e;->b(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lx6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx6/e$j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx6/e;Lx6/e;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V
    .registers 5

    iput-object p4, p0, Lx6/e$b;->d:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lx6/e$j;-><init>(Lx6/e;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public c(Z)Lx6/e$o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lx6/e$o<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lx6/e$b;->d:Ljava/lang/Object;

    new-instance p1, Lx6/e$o;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lx6/e$o;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method
