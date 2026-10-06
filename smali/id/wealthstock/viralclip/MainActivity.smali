.class public Lid/wealthstock/viralclip/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final GAP:I = 0xc

.field private static final PAD:I = 0x10


# instance fields
.field private busy:Landroid/view/View;

.field private clipCount:Landroid/widget/Spinner;

.field private log:Landroid/widget/TextView;

.field private final main:Landroid/os/Handler;

.field private final produced:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private quality:Landroid/widget/Spinner;

.field private render:Landroid/widget/Button;

.field private results:Landroid/widget/LinearLayout;

.field private scroller:Landroid/widget/ScrollView;

.field private stage:Landroid/widget/TextView;

.field private urlField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lid/wealthstock/viralclip/MainActivity;->main:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/wealthstock/viralclip/MainActivity;->produced:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lid/wealthstock/viralclip/MainActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lid/wealthstock/viralclip/MainActivity;->start()V

    return-void
.end method

.method static synthetic access$100(Lid/wealthstock/viralclip/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lid/wealthstock/viralclip/MainActivity;->stage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lid/wealthstock/viralclip/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lid/wealthstock/viralclip/MainActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lid/wealthstock/viralclip/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lid/wealthstock/viralclip/MainActivity;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$500(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->listClips(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$600(Lid/wealthstock/viralclip/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lid/wealthstock/viralclip/MainActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 37
    iget-object p0, p0, Lid/wealthstock/viralclip/MainActivity;->scroller:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$800(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->play(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$900(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->share(Ljava/io/File;)V

    return-void
.end method

.method private action(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 3

    .line 393
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 396
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p1, v2, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 399
    const/16 p2, 0x8

    invoke-direct {p0, p2}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 400
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    return-object v0
.end method

.method private appendLog(Ljava/lang/String;)V
    .locals 3

    .line 328
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    const-string v0, "frame="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "size="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "bitrate="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    :cond_2
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity;->log:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 343
    iget-object p1, p0, Lid/wealthstock/viralclip/MainActivity;->scroller:Landroid/widget/ScrollView;

    new-instance v0, Lid/wealthstock/viralclip/MainActivity$4;

    invoke-direct {v0, p0}, Lid/wealthstock/viralclip/MainActivity$4;-><init>(Lid/wealthstock/viralclip/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void

    .line 337
    :cond_3
    :goto_0
    return-void

    .line 329
    :cond_4
    :goto_1
    return-void
.end method

.method private buildUi()V
    .locals 17

    .line 68
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    const/16 v3, 0x10

    invoke-direct {v0, v3}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v0, v3}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v3}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v3}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 71
    const v3, -0xf1f1f0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 73
    const-string v4, "ViralClip"

    const/16 v5, 0x1c

    const/4 v6, -0x1

    invoke-direct {v0, v4, v5, v6}, Lid/wealthstock/viralclip/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    .line 74
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 75
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    const/16 v4, 0xd

    const v5, -0x65655c

    const-string v7, "Potong video jadi klip vertikal 9:16, tiap klip 45-50 detik. Momen dicari otomatis dari suara, tanpa subtitle. Semua diproses di HP, tanpa server."

    invoke-direct {v0, v7, v4, v5}, Lid/wealthstock/viralclip/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    .line 80
    const/4 v5, 0x4

    invoke-direct {v0, v5}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v7

    const/16 v8, 0x18

    invoke-direct {v0, v8}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v7, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 81
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;

    .line 84
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;

    const-string v7, "Tempel URL YouTube"

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;

    const v7, -0x95958c

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 86
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 87
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;

    const v7, -0xe5e5e1

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 88
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 89
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;

    const/16 v7, 0xc

    invoke-direct {v0, v7}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {v0, v7}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v7}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {v0, v7}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v4, v9, v11, v12, v13}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 90
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    const-string v4, "Jumlah klip"

    invoke-direct {v0, v4}, Lid/wealthstock/viralclip/MainActivity;->caption(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    const-string v15, "7"

    const-string v16, "8"

    const-string v11, "3"

    const-string v12, "4"

    const-string v13, "5"

    const-string v14, "6"

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x5

    invoke-direct {v0, v4, v9}, Lid/wealthstock/viralclip/MainActivity;->spinner([Ljava/lang/String;I)Landroid/widget/Spinner;

    move-result-object v4

    iput-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->clipCount:Landroid/widget/Spinner;

    .line 94
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->clipCount:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    const-string v4, "Kualitas sumber (mempengaruhi ukuran unduhan)"

    invoke-direct {v0, v4}, Lid/wealthstock/viralclip/MainActivity;->caption(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    const-string v4, "720p  (unduh lebih kecil)"

    const-string v9, "1080p (jernih, unduhan besar)"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v10}, Lid/wealthstock/viralclip/MainActivity;->spinner([Ljava/lang/String;I)Landroid/widget/Spinner;

    move-result-object v4

    iput-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->quality:Landroid/widget/Spinner;

    .line 102
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->quality:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    .line 105
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    const-string v9, "Buat klip"

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 107
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    const v4, -0xb2d2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 108
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 109
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    new-instance v4, Lid/wealthstock/viralclip/MainActivity$1;

    invoke-direct {v4, v0}, Lid/wealthstock/viralclip/MainActivity$1;-><init>(Lid/wealthstock/viralclip/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    invoke-direct {v0, v8}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    iget-object v8, v0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    invoke-virtual {v1, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->busy:Landroid/view/View;

    .line 121
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    invoke-direct {v0, v7}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 125
    iget-object v4, v0, Lid/wealthstock/viralclip/MainActivity;->busy:Landroid/view/View;

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->busy:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const/16 v3, 0xf

    const-string v4, ""

    invoke-direct {v0, v4, v3, v6}, Lid/wealthstock/viralclip/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->stage:Landroid/widget/TextView;

    .line 129
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->stage:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 130
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->stage:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v3, v10, v6, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 131
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->stage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    const v3, -0x85857c

    invoke-direct {v0, v4, v7, v3}, Lid/wealthstock/viralclip/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->log:Landroid/widget/TextView;

    .line 134
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->log:Landroid/widget/TextView;

    invoke-direct {v0, v5}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v10, v4, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->log:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->results:Landroid/widget/LinearLayout;

    .line 138
    iget-object v3, v0, Lid/wealthstock/viralclip/MainActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    iget-object v2, v0, Lid/wealthstock/viralclip/MainActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lid/wealthstock/viralclip/MainActivity;->scroller:Landroid/widget/ScrollView;

    .line 142
    iget-object v2, v0, Lid/wealthstock/viralclip/MainActivity;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 143
    iget-object v1, v0, Lid/wealthstock/viralclip/MainActivity;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Lid/wealthstock/viralclip/MainActivity;->setContentView(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method private caption(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 147
    const v0, -0x65655c

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1, v0}, Lid/wealthstock/viralclip/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    .line 148
    invoke-direct {p0, v1}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    return-object p1
.end method

.method private clearOldClips(Ljava/io/File;I)V
    .locals 8

    .line 292
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 293
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 294
    new-instance v2, Lid/wealthstock/viralclip/MainActivity$3;

    invoke-direct {v2, p0}, Lid/wealthstock/viralclip/MainActivity$3;-><init>(Lid/wealthstock/viralclip/MainActivity;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 301
    nop

    .line 302
    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 303
    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v7, p2, 0x2

    if-ge v4, v7, :cond_0

    .line 304
    goto :goto_1

    .line 306
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 302
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 312
    :cond_2
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string v0, "media"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 314
    if-eqz p1, :cond_3

    .line 315
    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_3

    aget-object v0, p1, v1

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 319
    :cond_3
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 64
    int-to-float p1, p1

    invoke-virtual {p0}, Lid/wealthstock/viralclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private label(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 1

    .line 153
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    return-object v0
.end method

.method private listClips(Ljava/io/File;)V
    .locals 10

    .line 356
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 357
    if-nez p1, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 361
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 362
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 363
    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    const/4 v6, -0x1

    invoke-direct {p0, v4, v5, v6}, Lid/wealthstock/viralclip/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    .line 369
    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lid/wealthstock/viralclip/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v4, v1, v5, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 370
    iget-object v5, p0, Lid/wealthstock/viralclip/MainActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 373
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    new-instance v5, Lid/wealthstock/viralclip/MainActivity$5;

    invoke-direct {v5, p0, v3}, Lid/wealthstock/viralclip/MainActivity$5;-><init>(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V

    const-string v6, "Putar"

    invoke-direct {p0, v6, v5}, Lid/wealthstock/viralclip/MainActivity;->action(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    new-instance v5, Lid/wealthstock/viralclip/MainActivity$6;

    invoke-direct {v5, p0, v3}, Lid/wealthstock/viralclip/MainActivity$6;-><init>(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V

    const-string v6, "Bagikan"

    invoke-direct {p0, v6, v5}, Lid/wealthstock/viralclip/MainActivity;->action(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    iget-object v5, p0, Lid/wealthstock/viralclip/MainActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    iget-object v4, p0, Lid/wealthstock/viralclip/MainActivity;->produced:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 390
    :cond_2
    return-void
.end method

.method private play(Ljava/io/File;)V
    .locals 5

    .line 414
    invoke-static {p1}, Lid/wealthstock/viralclip/MainActivity;->uriFor(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    const-string v1, "video/mp4"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    :try_start_0
    invoke-virtual {p0, v0}, Lid/wealthstock/viralclip/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_0

    .line 420
    :catch_0
    move-exception p1

    .line 422
    const-string p1, "Tidak ada aplikasi pemutar"

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->toast(Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void
.end method

.method private setBusy(Z)V
    .locals 5

    .line 322
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity;->busy:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity;->render:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const-string p1, "Memproses..."

    goto :goto_1

    :cond_1
    const-string p1, "Buat klip"

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method private share(Ljava/io/File;)V
    .locals 5

    .line 427
    invoke-static {p1}, Lid/wealthstock/viralclip/MainActivity;->uriFor(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 431
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 433
    :try_start_0
    const-string p1, "Bagikan klip"

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    goto :goto_0

    .line 434
    :catch_0
    move-exception p1

    .line 435
    const-string p1, "Tidak ada aplikasi untuk berbagi"

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/MainActivity;->toast(Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void
.end method

.method private spinner([Ljava/lang/String;I)Landroid/widget/Spinner;
    .locals 3

    .line 161
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 164
    const p1, 0x1090009

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 167
    return-object v0
.end method

.method private start()V
    .locals 7

    .line 175
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity;->urlField:Landroid/widget/EditText;
    if-eqz v0, :cond_no_field
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    goto :after_field_check
    :cond_no_field
    const-string v0, "Input field missing"
    invoke-direct {p0, v0}, Lid/wealthstock/viralclip/MainActivity;->toast(Ljava/lang/String;)V
    return-void
    :after_field_check

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v0, "Tempel URL YouTube dulu"

    invoke-direct {p0, v0}, Lid/wealthstock/viralclip/MainActivity;->toast(Ljava/lang/String;)V

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-static {v0}, Lid/wealthstock/viralclip/InnertubeResolver;->parseVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 181
    const-string v0, "URL YouTube tidak dikenali"

    invoke-direct {p0, v0}, Lid/wealthstock/viralclip/MainActivity;->toast(Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lid/wealthstock/viralclip/MainActivity;->clipCount:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 186
    iget-object v2, p0, Lid/wealthstock/viralclip/MainActivity;->quality:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2d0

    goto :goto_0

    :cond_2
    const/16 v2, 0x438

    .line 188
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lid/wealthstock/viralclip/MainActivity;->setBusy(Z)V

    .line 189
    iget-object v3, p0, Lid/wealthstock/viralclip/MainActivity;->results:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 190
    iget-object v3, p0, Lid/wealthstock/viralclip/MainActivity;->produced:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 191
    const-string v3, "Mulai"

    invoke-direct {p0, v3}, Lid/wealthstock/viralclip/MainActivity;->appendLog(Ljava/lang/String;)V

    .line 193
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lid/wealthstock/viralclip/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "clips"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3

    .line 195
    const-string v0, "Tidak bisa membuat folder kerja"

    invoke-direct {p0, v0}, Lid/wealthstock/viralclip/MainActivity;->toast(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lid/wealthstock/viralclip/MainActivity;->setBusy(Z)V

    .line 197
    return-void

    .line 201
    :cond_3
    invoke-direct {p0, v3, v1}, Lid/wealthstock/viralclip/MainActivity;->clearOldClips(Ljava/io/File;I)V

    .line 203
    new-instance v4, Lid/wealthstock/viralclip/MainActivity$2;

    invoke-direct {v4, p0, v3}, Lid/wealthstock/viralclip/MainActivity$2;-><init>(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V

    invoke-static {v0, v1, v2, v3, v4}, Lid/wealthstock/viralclip/ClipPipeline;->run(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V

    .line 281
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    .line 440
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 441
    return-void
.end method

.method static uriFor(Ljava/io/File;)Landroid/net/Uri;
    .locals 5

    .line 406
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 407
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 408
    const-string v1, "id.wealthstock.viralclip.files"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 410
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 406
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lid/wealthstock/viralclip/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xf1f1f0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-direct {p0}, Lid/wealthstock/viralclip/MainActivity;->buildUi()V
    .line 61
    return-void
.end method
