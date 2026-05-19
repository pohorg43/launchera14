.class public Ll5/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/g;-><init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Ly6/e2;ZILi5/v0;Li5/y0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/j1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx6/m;

.field public final synthetic b:Li5/y0;

.field public final synthetic c:Ll5/g;


# direct methods
.method public constructor <init>(Ll5/g;Lx6/m;Li5/y0;)V
    .registers 4

    iput-object p1, p0, Ll5/g$a;->c:Ll5/g;

    iput-object p2, p0, Ll5/g$a;->a:Lx6/m;

    iput-object p3, p0, Ll5/g$a;->b:Li5/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    new-instance v0, Ll5/g$c;

    iget-object v1, p0, Ll5/g$a;->c:Ll5/g;

    iget-object v2, p0, Ll5/g$a;->a:Lx6/m;

    iget-object p0, p0, Ll5/g$a;->b:Li5/y0;

    invoke-direct {v0, v1, v2, p0}, Ll5/g$c;-><init>(Ll5/g;Lx6/m;Li5/y0;)V

    return-object v0
.end method
