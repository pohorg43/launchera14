.class public Ll5/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/b;-><init>(Lx6/m;Lh6/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/b;


# direct methods
.method public constructor <init>(Ll5/b;)V
    .registers 2

    iput-object p1, p0, Ll5/b$a;->a:Ll5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ll5/b$a;->a:Ll5/b;

    invoke-virtual {v0}, Ll5/b;->U()Lr6/i;

    move-result-object v1

    new-instance v2, Ll5/a;

    invoke-direct {v2, p0}, Ll5/a;-><init>(Ll5/b$a;)V

    invoke-static {v0, v1, v2}, Ly6/a2;->o(Li5/h;Lr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method
