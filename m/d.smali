.class public Lm/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm/b;


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ll/c;

.field public final d:Ll/d;

.field public final e:Ll/f;

.field public final f:Ll/f;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Ll/c;Ll/d;Ll/f;Ll/f;Ll/b;Ll/b;Z)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lm/d;->a:I

    iput-object p3, p0, Lm/d;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lm/d;->c:Ll/c;

    iput-object p5, p0, Lm/d;->d:Ll/d;

    iput-object p6, p0, Lm/d;->e:Ll/f;

    iput-object p7, p0, Lm/d;->f:Ll/f;

    iput-object p1, p0, Lm/d;->g:Ljava/lang/String;

    iput-boolean p10, p0, Lm/d;->h:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Ln/b;)Lh/c;
    .registers 4

    new-instance v0, Lh/h;

    invoke-direct {v0, p1, p2, p0}, Lh/h;-><init>(Lcom/airbnb/lottie/j;Ln/b;Lm/d;)V

    return-object v0
.end method
