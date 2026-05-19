.class public final Lu5/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lu5/c;

.field public final b:Lu5/k;

.field public final c:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lr5/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lh4/f;

.field public final e:Lw5/e;


# direct methods
.method public constructor <init>(Lu5/c;Lu5/k;Lh4/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu5/c;",
            "Lu5/k;",
            "Lh4/f<",
            "Lr5/b0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu5/g;->a:Lu5/c;

    iput-object p2, p0, Lu5/g;->b:Lu5/k;

    iput-object p3, p0, Lu5/g;->c:Lh4/f;

    iput-object p3, p0, Lu5/g;->d:Lh4/f;

    new-instance p1, Lw5/e;

    invoke-direct {p1, p0, p2}, Lw5/e;-><init>(Lu5/g;Lu5/k;)V

    iput-object p1, p0, Lu5/g;->e:Lw5/e;

    return-void
.end method
