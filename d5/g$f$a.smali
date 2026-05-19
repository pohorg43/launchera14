.class public final Ld5/g$f$a;
.super Ld5/g$f;
.source ""

# interfaces
.implements Ld5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/g$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .registers 6

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ld5/g$f;-><init>(Ljava/lang/reflect/Field;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Ld5/g$f$a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ld5/g$f;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Ld5/g;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object p0, p0, Ld5/g$f$a;->f:Ljava/lang/Object;

    invoke-static {p1}, Li4/k;->w([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
