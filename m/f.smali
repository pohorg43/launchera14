.class public Lm/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:Ll/h;

.field public final c:Ll/d;

.field public final d:Z


# direct methods
.method public constructor <init>(ILl/h;Ll/d;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm/f;->a:I

    iput-object p2, p0, Lm/f;->b:Ll/h;

    iput-object p3, p0, Lm/f;->c:Ll/d;

    iput-boolean p4, p0, Lm/f;->d:Z

    return-void
.end method
