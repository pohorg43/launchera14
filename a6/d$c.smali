.class public final La6/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/d;->j(Lu6/b0$a;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:La6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La6/d<",
            "TA;TS;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La6/d;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/d<",
            "TA;TS;>;",
            "Ljava/util/ArrayList<",
            "TA;>;)V"
        }
    .end annotation

    iput-object p1, p0, La6/d$c;->a:La6/d;

    iput-object p2, p0, La6/d$c;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b(Lh6/b;Li5/v0;)La6/t$a;
    .registers 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La6/d$c;->a:La6/d;

    iget-object p0, p0, La6/d$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, p0}, La6/d;->t(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;

    move-result-object p0

    return-object p0
.end method
