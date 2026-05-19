.class public final Lo5/g;
.super Lo5/f;
.source ""

# interfaces
.implements Ly5/c;


# instance fields
.field public final b:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Lh6/f;Ljava/lang/annotation/Annotation;)V
    .registers 4

    const-string v0, "annotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo5/f;-><init>(Lh6/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lo5/g;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a()Ly5/a;
    .registers 2

    new-instance v0, Lo5/e;

    iget-object p0, p0, Lo5/g;->b:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, p0}, Lo5/e;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method
